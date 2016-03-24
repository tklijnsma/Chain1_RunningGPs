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

export X509_USER_PROXY=$HOME/private/personal/voms_proxy.cert

export FRAGMENT_PY=Configuration/GenProduction/python/HIG-RunIIWinter15GenOnly-00011-fragment.py

#curl -s --insecure https://cms-pdmv.cern.ch/mcm/public/restapi/requests/get_fragment/HIG-RunIIWinter15GenOnly-00011 --retry 2 --create-dirs -o $FRAGMENT_PY 

echo "Not downloading python fragment; assuming it is already created"
echo "Running cmsDriver.py to create the cfg:"

scram b
cd ../../
echo "----------- Trying the cmsDriver.py command"

# With " --inputCommands 'keep *','drop LHEXMLStringProduct_*_*_*' "
#cmsDriver.py $FRAGMENT_PY --fileout file:HIG-RunIIWinter15GenOnly-00011.root --mc --eventcontent RAWSIM --customise SLHCUpgradeSimulations/Configuration/postLS1Customs.customisePostLS1,Configuration/DataProcessing/Utils.addMonitoring --datatier GEN --inputCommands 'keep *','drop LHEXMLStringProduct_*_*_*' --conditions MCRUN2_71_V1::All --step GEN --magField 38T_PostLS1 --python_filename HIG-RunIIWinter15GenOnly-00011_1_cfg.py --no_exec -n 10000

# Without " --inputCommands 'keep *','drop LHEXMLStringProduct_*_*_*' "
#cmsDriver.py $FRAGMENT_PY --fileout file:HIG-RunIIWinter15GenOnly-00011.root --mc --eventcontent RAWSIM --customise SLHCUpgradeSimulations/Configuration/postLS1Customs.customisePostLS1,Configuration/DataProcessing/Utils.addMonitoring --datatier GEN --conditions MCRUN2_71_V1::All --step GEN --magField 38T_PostLS1 --python_filename HIG-RunIIWinter15GenOnly-00011_1_cfg.py --no_exec -n 20000


# Without " --inputCommands 'keep *','drop LHEXMLStringProduct_*_*_*' "
# but with a --filein flag
#cmsDriver.py $FRAGMENT_PY --filein file:HIG-RunIIWinter15wmLHE-00035.root --fileout file:HIG-RunIIWinter15GenOnly-00011.root --mc --eventcontent RAWSIM --customise SLHCUpgradeSimulations/Configuration/postLS1Customs.customisePostLS1,Configuration/DataProcessing/Utils.addMonitoring --datatier GEN --conditions MCRUN2_71_V1::All --step GEN --magField 38T_PostLS1 --python_filename HIG-RunIIWinter15GenOnly-00011_1_cfg.py --no_exec -n 20000


# With " --inputCommands 'keep *','drop LHEXMLStringProduct_*_*_*' "
# and with a --filein flag
cmsDriver.py $FRAGMENT_PY --filein file:HIG-RunIIWinter15wmLHE-00035.root --fileout file:HIG-RunIIWinter15GenOnly-00011.root --mc --eventcontent RAWSIM --customise SLHCUpgradeSimulations/Configuration/postLS1Customs.customisePostLS1,Configuration/DataProcessing/Utils.addMonitoring --datatier GEN --inputCommands 'keep *','drop LHEXMLStringProduct_*_*_*' --conditions MCRUN2_71_V1::All --step GEN --magField 38T_PostLS1 --python_filename HIG-RunIIWinter15GenOnly-00011_1_cfg.py --no_exec -n 20000



