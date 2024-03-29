apt-get install -y default-jre openjdk-11-jre-headless openjdk-8-jre-headless default-jdk libcurl4 libcurl4-openssl-dev \
libxml2-dev libssl-dev
apt-key adv --keyserver keyserver.ubuntu.com --recv-keys E298A3A825C0D65DFD57CBB651716619E084DAB9
add-apt-repository "deb https://cloud.r-project.org/bin/linux/ubuntu bionic-cran40/"
add-apt-repository "deb http://archive.ubuntu.com/ubuntu/ bionic-backports main restricted universe"
apt-get update
apt-get upgrade -y
apt-get install -y r-base r-base-dev
R -e "install.packages('BiocManager'); library('BiocManager'); BiocManager::install('GWASTools')"
R -e 'install.packages("tidyverse", lib="/usr/local/lib/R/site-library")'
exit
