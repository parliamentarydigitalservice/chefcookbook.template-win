#!/bin/bash

## Execute the CI task from the Rakefile
#sudo $(which chef) exec rake ci

## Obtain the source AMI to use for our Packer build.
## Microsoft Windows 2012 R2 Standard edition with 64-bit architecture
base_ami_id=ami-1719f677

## Build an AMI for this cookbook
$(which chef) exec rake packer[$base_ami_id]