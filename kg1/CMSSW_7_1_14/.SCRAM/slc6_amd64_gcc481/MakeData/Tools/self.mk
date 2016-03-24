ALL_TOOLS      += self
self_EX_INCLUDE := /afs/cern.ch/work/t/tklijnsm/Production/Chain1_RunningGPs/CMSSW_7_1_14/src /afs/cern.ch/work/t/tklijnsm/Production/Chain1_RunningGPs/CMSSW_7_1_14/include/LCG /afs/cern.ch/cms/slc6_amd64_gcc481/cms/cmssw/CMSSW_7_1_14/src /afs/cern.ch/cms/slc6_amd64_gcc481/cms/cmssw/CMSSW_7_1_14/include/LCG
self_EX_LIBDIR := /afs/cern.ch/work/t/tklijnsm/Production/Chain1_RunningGPs/CMSSW_7_1_14/lib/slc6_amd64_gcc481 /afs/cern.ch/work/t/tklijnsm/Production/Chain1_RunningGPs/CMSSW_7_1_14/external/slc6_amd64_gcc481/lib /afs/cern.ch/cms/slc6_amd64_gcc481/cms/cmssw/CMSSW_7_1_14/lib/slc6_amd64_gcc481 /afs/cern.ch/cms/slc6_amd64_gcc481/cms/cmssw/CMSSW_7_1_14/external/slc6_amd64_gcc481/lib
self_EX_FLAGS_SYMLINK_DEPTH_CMSSW_SEARCH_PATH  := 2
self_EX_FLAGS_LLVM_ANALYZER  := llvm-analyzer
self_EX_FLAGS_SKIP_TOOLS_SYMLINK  := cxxcompiler ccompiler f77compiler gcc-cxxcompiler gcc-ccompiler gcc-f77compiler llvm-cxxcompiler llvm-ccompiler llvm-f77compiler llvm-analyzer-cxxcompiler llvm-analyzer-ccompiler icc-cxxcompiler icc-ccompiler icc-f77compiler x11 dpm
self_EX_FLAGS_DEFAULT_COMPILER  := gcc
self_EX_FLAGS_EXTERNAL_SYMLINK  := PATH LIBDIR CMSSW_SEARCH_PATH
self_EX_FLAGS_NO_EXTERNAL_RUNTIME  := LD_LIBRARY_PATH PATH CMSSW_SEARCH_PATH
self_EX_FLAGS_OVERRIDABLE_FLAGS  := CPPDEFINES CXXFLAGS FFLAGS CFLAGS CPPFLAGS LDFLAGS
self_ORDER := 20000
IS_PATCH:=

