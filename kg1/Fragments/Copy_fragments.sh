#!/bin/bash
source  /afs/cern.ch/cms/cmsset_default.sh
export SCRAM_ARCH=slc6_amd64_gcc481

cd /afs/cern.ch/work/t/tklijnsm/Production/Chain1_RunningGPs/kg1

if [ -r CMSSW_7_1_14/src ] ; then 
    echo release CMSSW_7_1_14 already exists
else
    scram p CMSSW CMSSW_7_1_14
fi

mkdir -p CMSSW_7_1_14/src/Configuration/GenProduction/python/
cp Fragments/* CMSSW_7_1_14/src/Configuration/GenProduction/python/