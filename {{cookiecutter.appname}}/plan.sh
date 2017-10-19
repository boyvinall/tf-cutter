#!/bin/bash

# update modules first
terraform get -update

TARGETS=$(for t in $*; do echo $t; done | xargs -L1 -I% echo -target=%)
terraform plan -out=update.tfplan $TARGETS
