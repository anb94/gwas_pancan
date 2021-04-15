#!/usr/bin/perl -w

use strict;
use Getopt::Long;
use File::Basename;
use List::Util qw[min max];


###############################################################
##################### DOCUMENTATION ###########################

## Author: Yun Li
## Date: 2010-11-29
## Goal: convert MaCH output prob+info file into PLINK input dosage dat file

## Edited: Sarah Medland
## Date: 2014-01-17
## Goal: change Mach/minimac dose to plink dose

my $starttime = time();
my $ltime = localtime();
my $location = $0;
my $title = "dose2plink";

print "\n$title - Sarah Medland - $ltime\n";
print "\t     Based on prob2plink writen by Yun Li \n";
print "\t     Last edit 16 July 2014 \n";
## Input Parameters
## Input Files
## (1) dose
## (2) info (only need 1. SNP name; 2. AL1; and 3. AL2)

## Output Files
## .pdose
## .pfam

################# END OF DOCUMENTATION ########################
###############################################################

my $MIN_NUM_OPTS = 2;
my $MIN_INFO_FIELDS = 3;

if($#ARGV<($MIN_NUM_OPTS*2 - 1))
{
	&usage();
	die "Please provide the names of the dose and info files you want to convert\n\n";
}

my %opts = ();

	# Default Optional Options
$opts{out} = "plink_dosage";
$opts{nohead} = 0;
$opts{gz} = 1;

Getopt::Long::GetOptions(\%opts,qw(
	dose=s
	info=s
	out=s
	nohead=i
	gz=i
)) || die "Please provide the names of the dose and info files you want to convert\n\n";

&printPar();

my @SNPs = ();
my @alleleOnes = ();
my @alleleTwos = ();
my $numSNPs = 0;

my @doses = ();
my @famIDs = ();
my @subIDs = ();
my $numPeople = 0;
&main();

my $endtime = time();
my $lapsetime = $endtime - $starttime;
print "\nAnalysis took $lapsetime seconds\n\n";

# begin sub
sub usage
{
	print "\n";
	print "Usage:\n\t";
	print "-dose\t minimac/MaCH dose/mldose file \t(Required) \n\t";
	print "-info\t minimac/MaCH info/mlinfo file \t(Required) \n\t";
	print "-out \t output prefix \t\t\t(Default=\"plink_dosage\") \n\t";
	print "\t WARNING: Any existing pdat and pfam with this prefix will be overwritten without checking \n\t";
	print "-gz \t gzipped output \t\t(Default=\"1\"=gzipped, \"0\"=non-gzipped) \n\t";
	print "\n";
}

sub printPar
{
	print "\n";
	print "Parameters in Effect:\n";
	print "\t minimac/MaCH dose/mldose file: \t'$opts{dose}'\n";
	print "\t minimac/MaCH info/mlinfo file: \t'$opts{info}'\n";
    print "\t Output prefix: \t\t\t'$opts{out}'\n\n";
	print "\t WARNING: Any existing $opts{out} pdat and pfam files will be overwritten without checking \n";
	if ($opts{gz} ==1 ) {print "\t NOTE: The -gz flag = 1 $opts{out} pdat fill will be gzipped\n"; }
	if ($opts{gz} ==0 ) {print "\t NOTE: The -gz flag = 0 $opts{out} pdat file will not be gzipped\n"; }
	print "\n";
}

sub rm
{
	if(-e $_[0])
	{
		print "WARNING: $_[0] existed it was overwriten!!\n\n";
		system "/bin/rm -rf $_[0]";
	}
}

#==================================================================
# Subroutine:
#   Open($filename, $handle)
#
# Usage:
#   Open('myfile.txt', \*IN);
#   Open($pedfile, \*PED);
#
#   Then reference the handles <IN> and <PED> as usual.
#
# Description:
#   Open the file 'filename'. The file can be a normal file
#   or one compressed with gzip or bzip2.
#   Function does not return if the open fails.
#
# Arguments:
#   $filename - path to file to open
#   $handle - GLOB name of handle to use. Include '\*'
#
#==================================================================
sub Open {
    my ($filename, $handle) = @_;

    # Handle gzipped data
	    if ($filename =~ /\.gz$/) {
        my $cmd = "gunzip -c $filename";
        open($handle, "$cmd |") ||
            die "Unable to invoke command '$cmd': $!\n";
        if (eof($handle)) { die "Cmd failed: '$cmd'\n"; }
        return 1;
    }
    # Handle bzip2 data
    if ($filename =~ /\.bz2$/) {
        my $cmd = "bunzip2 -c $filename";
        open($handle, "$cmd |") ||
            die "Unable to invoke command '$cmd': $!\n";
        if (eof($handle)) { die "Cmd failed: '$cmd'\n"; }
        return 2;
    }
    # Handle normal file
    open($handle, $filename) ||
        die "Unable to open file '$filename': $!\n";
 
 return 3;
}

sub main
{
  &loadInfo();
  &loaddose(); #may not scale well with huge dataset, since loading all into RAM first;
  &output();
}

sub loadInfo
{
    # Handle gzipped data
	if ($opts{info} =~ /\.gz$/) {
        my $cmd = "gunzip -c $opts{info}";
        open(IN, "$cmd |") ||
            die "Unable to invoke command '$cmd': $!\n";
   }
    # Handle non gzipped
    if ($opts{info} !~ /\.gz$/) {
        open(IN,$opts{info}) || die "cannot open file $opts{info}\n\n";
	}     	

			
 # sanity check
  my $headerline = <IN>;
  chomp($headerline);
  my @headerarr = (split(/\s+/, $headerline));
  my $numFields = scalar(@headerarr);
  if ($numFields < $MIN_INFO_FIELDS)
  {
    print "ERROR: info file must have at least three fields: SNP, Al1 and Al2
	\n Number of headers found:\t $numFields
	\n Header line: \t\t $headerline
	\n";
    exit;
  }
  
  if ($headerarr[0] ne "SNP" || $headerarr[1] ne "Al1" || $headerarr[2] ne "Al2")
  {
    print "ERROR: the first three fields of the info file must be: SNP, Al1 and Al2 in that order\n;
	\n Number of headers found:\t $numFields
	\n Header1: \t\t $headerarr[0]
	\n Header2: \t\t $headerarr[1]
	\n Header3: \t\t $headerarr[2]
	\n Header line: \t\t $headerline
	\n";
    exit;
  }
  
  # read SNPs
  while (my $line = <IN>)
  {
    chomp($line);
    my @linearr = (split(/\s+/, $line));
    if (scalar(@linearr) == 0) {next;}
    if (scalar(@linearr) != $numFields)
    {
      print "ERROR: the following line in info file contains different number of fields than specified by ther header line\n";
      print "       $line\n\n";
      exit;
    }
    
    push @SNPs, $linearr[0];
    push @alleleOnes, $linearr[1];
    push @alleleTwos, $linearr[2];
  }
  
  $numSNPs = scalar(@SNPs);
  print "Read $numSNPs SNPs from info file\n";
  
  close(IN);
}

sub loaddose
{
  Open($opts{dose},\*IN) || die "cannot open file $opts{dose}\n\n";
  my $expFieldsPerLine = $numSNPs + 2;
  my $linenum = 0;
  while(my $line = <IN>)
  {
    $linenum ++;
    chomp($line);
    my @linearr = (split(/\s+/,$line));
    if (scalar(@linearr) == 0) {next;}
    
    if (scalar(@linearr) != $expFieldsPerLine)
    {
      print "ERROR: line $linenum in dose file contains different number of fields than expected from info file 
	  \n Number of SNPs in info file: \t\t $numSNPs \n Number of SNPs found in dose file:  \t $expFieldsPerLine \n Number of SNPs in dose file:  \t\t $#linearr \n\n";
     exit;
    }
    
    my @IDs = (split(/->/,$linearr[0]));
    
    ## could print out the IDs directly to output .fam file without storing in RAM ##
    push @famIDs, $IDs[0];
    push @subIDs, $IDs[1];
    
    ## store doses in RAM ##
    for (my $j = 2; $j <= $#linearr; $j++)
    {
      push @doses, $linearr[$j];
    }
    
  }
  close(IN);
  $numPeople = scalar(@famIDs);
  print "Read $numPeople people from dose file\n";
}

sub output
{
  ######################
  ## output .fam file ##
  ######################
  my $ofam = $opts{out}.".pfam";
  &rm($ofam);
  print "Generating .pfam output ...\n";
  open(OUT, " >>$ofam") || die "cannot create file $ofam\n\n";
  for (my $i = 0; $i < $numPeople; $i ++)
  {
    print OUT "$famIDs[$i] $subIDs[$i] 0 0 1 -9\n";
  }
  close(OUT);
  
  ############################
  ## output .plink_dat file ##
  ############################

  #gzipped output
if ($opts{gz} ==1 ) {
  my $odat = $opts{out}.".pdat";
  &rm($odat);
  print "Generating .pdat output ...\n";
  open(OUT, "| gzip -c >>$odat.gz") || die "FATAL ERROR: Cannot create the gzipped .pdat file.\n
  The most likely cause is the gzipping failed. Try using the -gz 0 option\n";
  
  ## print header line
  if ( ! $opts{nohead}) {print OUT "SNP\tA1\tA2"};
  foreach (my $i = 0; $i < $numPeople; $i ++)
  {
    print OUT "\t$famIDs[$i]\t$subIDs[$i]";
  } 
  print OUT "\n";
  # end of printing header line
  
  # print one SNP per line
  for (my $j = 0; $j < $numSNPs; $j ++)
  {
    if ( ! $opts{nohead}) {print OUT "$SNPs[$j]\t$alleleOnes[$j]\t$alleleTwos[$j]"};
    for (my $i = 0; $i < $numPeople; $i ++)
    {
      my $indexone = $i  * $numSNPs + $j;
      print OUT "\t$doses[$indexone]";
    } # end of person $i
    print OUT "\n";
  } # end of SNP j
  # end of printing one SNP per line
  close(OUT);
}


if ($opts{gz} ==0 ) {
  my $odat = $opts{out}.".pdat";
  &rm($odat);
  print "Generating .pdat output ...\n";
  open(OUT, ">>$odat") || die "Cannot create the non-gzipped file $odat\nTry checking permissions\n";
  
  ## print header line
  if ( ! $opts{nohead}) {print OUT "SNP\tA1\tA2"};
  foreach (my $i = 0; $i < $numPeople; $i ++)
  {
    print OUT "\t$famIDs[$i]\t$subIDs[$i]";
  } 
  print OUT "\n";
  # end of printing header line
  
  # print one SNP per line
  for (my $j = 0; $j < $numSNPs; $j ++)
  {
    if ( ! $opts{nohead}) {print OUT "$SNPs[$j]\t$alleleOnes[$j]\t$alleleTwos[$j]"};
    for (my $i = 0; $i < $numPeople; $i ++)
    {
      my $indexone = $i  * $numSNPs + $j;
      print OUT "\t$doses[$indexone]";
    } # end of person $i
    print OUT "\n";
  } # end of SNP j
  # end of printing one SNP per line
  close(OUT);
}
}
