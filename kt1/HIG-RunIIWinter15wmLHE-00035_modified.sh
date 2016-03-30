#!/bin/bash
source  /afs/cern.ch/cms/cmsset_default.sh
export SCRAM_ARCH=slc6_amd64_gcc481

if [ -r CMSSW_7_1_14/src ] ; then 
    echo release CMSSW_7_1_14 already exists
else
    scram p CMSSW CMSSW_7_1_14
fi

cd CMSSW_7_1_14/src
eval `scram runtime -sh`

export FRAGMENT_PY=Configuration/GenProduction/python/HIG-RunIIWinter15wmLHE-00035-fragment.py

export X509_USER_PROXY=$HOME/private/personal/voms_proxy.cert

# Fragment file already created
#curl -s --insecure https://cms-pdmv.cern.ch/mcm/public/restapi/requests/get_fragment/HIG-RunIIWinter15wmLHE-00035 --retry 2 --create-dirs -o $FRAGMENT_PY 
#[ -s $FRAGMENT_PY ] || exit $?;

echo "Not downloading python fragment; assuming it is already created"
echo "Running cmsDriver.py to create the cfg:"

scram b
cd ../../
cmsDriver.py $FRAGMENT_PY --fileout file:HIG-RunIIWinter15wmLHE-00035.root --mc --eventcontent LHE --datatier LHE --conditions MCRUN2_71_V1::All --step LHE --python_filename HIG-RunIIWinter15wmLHE-00035_1_cfg.py --no_exec --customise Configuration/DataProcessing/Utils.addMonitoring -n 20000 || exit $? ;
