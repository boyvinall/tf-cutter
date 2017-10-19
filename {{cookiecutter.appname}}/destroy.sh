#!/bin/bash

TARGETS=$(for t in $*; do echo $t; done | xargs -L1 -I% echo -target=%)
terraform plan -destroy -out=update.tfplan $TARGETS
