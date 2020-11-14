#/bin/bash

input_dir=$1
output_dir=$2

echo "Input Directory is $1"
echo "Output Directory is $2"

for file in $input_dir/*.txt; do
  # loop over each txt file in dir

echo "Working on file $file..."

  #make new file name from old, use sed to substiute suffix
  name=$(echo $file | sed s/.txt/.csv)

  # get contents of file with no # and store into file
  cat $file | grep -v "^#" > $name

  # move file to correct dir
  mv $name $output_dir

echo "Completed for file $file"
done
