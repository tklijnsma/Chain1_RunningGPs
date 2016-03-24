import FWCore.ParameterSet.Config as cms

# link to cards:
# https://github.com/cms-sw/genproductions/blob/master/bin/Powheg/production/V2/13TeV/Higgs/gg_H_quark-mass-effects_NNPDF30_13TeV/gg_H_quark-mass-effects_NNPDF30_13TeV_M125.input
# SHA a55a25d1fe9e5cb00de779a33edcb619283b2fa1
# this commit:
# https://github.com/cms-sw/genproductions/blob/a55a25d1fe9e5cb00de779a33edcb619283b2fa1/bin/Powheg/production/V2/13TeV/Higgs/gg_H_quark-mass-effects_NNPDF30_13TeV/gg_H_quark-mass-effects_NNPDF30_13TeV_M125.input

externalLHEProducer = cms.EDProducer("ExternalLHEProducer",
    #args = cms.vstring('/cvmfs/cms.cern.ch/phys_generator/gridpacks/slc6_amd64_gcc481/13TeV/powheg/V2/gg_H_quark-mass-effects_NNPDF30_13TeV_M125/v1/gg_H_quark-mass-effects_NNPDF30_13TeV_M125_tarball.tar.gz'),
    args = cms.vstring('/afs/cern.ch/work/t/tklijnsm/Production/Chain1/CMSSW_7_1_14/src/genproductions/bin/Powheg/Finished_gridpacks/ggH_kg1_gg_H_quark-mass-effects.tgz'),
    nEvents = cms.untracked.uint32(20000),
    numberOfParameters = cms.uint32(1),
    outputFile = cms.string('cmsgrid_final.lhe'),
    scriptName = cms.FileInPath('GeneratorInterface/LHEInterface/data/run_generic_tarball_cvmfs.sh')
)
