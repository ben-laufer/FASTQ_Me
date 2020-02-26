# FASTQ_Me
An example script of how to download WGBS data from SLIMS, check md5sums, merge lanes, and submit a project to CpG_Me

## Use
Change the arguments in the first lines of the script (lines 3 to 9). You can then run this script section by section in a screen, which allows you to verify the test commands or simply by the following command:

`FASTQ_Me.sh`

## Modifying the script

### Sample naming convention
This script assumes your unique sample is in the first string before the underscore delimiter. If this isn't the case then change lines 55, 58, and 69 accordingly. For example the following will take the first three strings based on the underscore delimiter:

`awk -F '_' '{print $1"_"$2"_"$3}'`

### Changing lane numbers
Generally, if your library pool is sequenced across multiple lanes, each lane will have a different name. However, this may not always be the case, particularly if you sequenced the same pool at two different time points. Therefore, before merging lanes in those scenarios, you'll want to change the lane number for an older batch that is located in a separate folder before putting those files in the SLIMS folder with the new data (before line 34). The following commands will accomplish this.

First, test the renaming command, which will change L001 to L005:
```
rename -n 's/_L001_R1_001/_L005_R1_001/' *.fastq.gz 
rename -n 's/_L001_R2_001/_L005_R2_001/' *.fastq.gz 
```

Then, if the test looks good, you can rename the samples:
```
rename 's/_L001_R1_001/_L005_R1_001/' *.fastq.gz 
rename 's/_L001_R2_001/_L005_R2_001/' *.fastq.gz 
```
 