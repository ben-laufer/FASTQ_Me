# FASTQ_Me
An example script of how to download WGBS data from SLIMS, check md5sums, merge lanes, and submit a project to CpG_Me

## Use
Change the arguments in the first lines of the script (lines 3 to 9).

## Sample naming convention
This script assumes your unique sample is in the first string before the underscore delimiter. If this isn't the case then change lines 55, 58, and 69 accordingly. For example the following will take the first three strings based on the underscore delimiter:

`awk -F '_' '{print $1"_"$2"_"$3}'`
 