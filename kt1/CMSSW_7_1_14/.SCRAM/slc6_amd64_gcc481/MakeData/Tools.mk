ALL_TOOLS      += alpgen

ALL_TOOLS      += blackhat
blackhat_EX_INCLUDE := /afs/cern.ch/cms/slc6_amd64_gcc481/external/blackhat/0.9.9-cms3/include
blackhat_EX_LIB := Ampl_eval BG BH BHcore CutPart Cut_wCI Cuteval Integrals Interface OLA RatPart Rateval Spinors assembly ratext
blackhat_EX_USE := qd

ALL_TOOLS      += boost
boost_EX_INCLUDE := /afs/cern.ch/cms/slc6_amd64_gcc481/external/boost/1.51.0-cms2/include
boost_EX_LIB := boost_thread boost_signals boost_date_time
boost_EX_USE := sockets
boost_EX_FLAGS_CPPDEFINES  := -DBOOST_SPIRIT_THREADSAFE -DPHOENIX_THREADSAFE

ALL_TOOLS      += boost_filesystem
boost_filesystem_EX_LIB := boost_filesystem
boost_filesystem_EX_USE := boost_system boost

ALL_TOOLS      += boost_header
boost_header_EX_INCLUDE := /afs/cern.ch/cms/slc6_amd64_gcc481/external/boost/1.51.0-cms2/include

ALL_TOOLS      += boost_iostreams
boost_iostreams_EX_USE := boost

ALL_TOOLS      += boost_program_options
boost_program_options_EX_LIB := boost_program_options
boost_program_options_EX_USE := boost

ALL_TOOLS      += boost_python
boost_python_EX_INCLUDE := /afs/cern.ch/cms/slc6_amd64_gcc481/external/boost/1.51.0-cms2/include
boost_python_EX_LIB := boost_python
boost_python_EX_USE := gccxml python

ALL_TOOLS      += boost_regex
boost_regex_EX_LIB := boost_regex
boost_regex_EX_USE := boost

ALL_TOOLS      += boost_serialization
boost_serialization_EX_LIB := boost_serialization
boost_serialization_EX_USE := boost

ALL_TOOLS      += boost_signals
boost_signals_EX_LIB := boost_signals
boost_signals_EX_USE := boost

ALL_TOOLS      += boost_system
boost_system_EX_LIB := boost_system
boost_system_EX_USE := boost

ALL_TOOLS      += bz2lib
bz2lib_EX_INCLUDE := /afs/cern.ch/cms/slc6_amd64_gcc481/external/bz2lib/1.0.5/include
bz2lib_EX_LIB := bz2

ALL_TOOLS      += cascade
cascade_EX_LIB := cascade_merged
cascade_EX_USE := f77compiler cascade_headers

ALL_TOOLS      += cascade_headers
cascade_headers_EX_INCLUDE := /afs/cern.ch/cms/slc6_amd64_gcc481/external/cascade/2.2.04-cms7/include

ALL_TOOLS      += castor
castor_EX_LIB := shift castorrfio castorclient castorcommon
castor_EX_USE := castor_header libuuid

ALL_TOOLS      += castor_header
castor_header_EX_INCLUDE := /afs/cern.ch/cms/slc6_amd64_gcc481/external/castor/2.1.13.9-cms/include /afs/cern.ch/cms/slc6_amd64_gcc481/external/castor/2.1.13.9-cms/include/shift

ALL_TOOLS      += ccache-ccompiler
ccache-ccompiler_EX_USE := gcc-ccompiler

ALL_TOOLS      += ccache-cxxcompiler
ccache-cxxcompiler_EX_USE := gcc-cxxcompiler

ALL_TOOLS      += ccache-f77compiler
ccache-f77compiler_EX_USE := gcc-f77compiler

ALL_TOOLS      += cgal
cgal_EX_INCLUDE := /afs/cern.ch/cms/slc6_amd64_gcc481/external/cgal/4.2-cms6/include
cgal_EX_LIB := CGAL_Core CGAL
cgal_EX_USE := zlib boost_system

ALL_TOOLS      += cgalimageio
cgalimageio_EX_LIB := CGAL_ImageIO
cgalimageio_EX_USE := zlib boost_system cgal

ALL_TOOLS      += charybdis
charybdis_EX_INCLUDE := /afs/cern.ch/cms/slc6_amd64_gcc481/external/charybdis/1.003-cms7/include
charybdis_EX_LIB := charybdis
charybdis_EX_USE := f77compiler herwig pythia6

ALL_TOOLS      += classlib
classlib_EX_INCLUDE := /afs/cern.ch/cms/slc6_amd64_gcc481/external/classlib/3.1.3-cms5/include
classlib_EX_LIB := classlib
classlib_EX_USE := zlib bz2lib pcre openssl
classlib_EX_FLAGS_CPPDEFINES  := -D__STDC_LIMIT_MACROS -D__STDC_FORMAT_MACROS

ALL_TOOLS      += clhep
clhep_EX_INCLUDE := /afs/cern.ch/cms/slc6_amd64_gcc481/external/clhep/2.1.4.1-cms/include
clhep_EX_LIB := CLHEP

ALL_TOOLS      += clhepheader
clhepheader_EX_INCLUDE := /afs/cern.ch/cms/slc6_amd64_gcc481/external/clhep/2.1.4.1-cms/include

ALL_TOOLS      += cmsswdata
cmsswdata_EX_FLAGS_CMSSW_DATA_PACKAGE  := CalibCalorimetry/CaloMiscalibTools=V01-00-00 CalibTracker/SiPixelESProducers=V02-00-00 CondFormats/JetMETObjects=V01-00-01 Configuration/Generator=V01-00-00 DQM/PhysicsHWW=V01-00-00 DetectorDescription/Schema=V02-02-01 FastSimulation/MaterialEffects=V04-02-08 FastSimulation/PileUpProducer=V04-05-18 Fireworks/Geometry=V07-05-00 GeneratorInterface/ReggeGribovPartonMCInterface=V00-00-02 Geometry/CMSCommonData=V01-09-00 Geometry/CSCGeometryBuilder=V01-08-00 Geometry/CaloEventSetup=V03-11-02 Geometry/DTGeometryBuilder=V00-05-00 Geometry/EcalCommonData=V05-05-00 Geometry/EcalSimData=V01-02-00 Geometry/EcalTestBeam=V00-09-09 Geometry/FP420CommonData=V00-06-00 Geometry/FP420SimData=V00-06-00 Geometry/ForwardCommonData=V01-05-00 Geometry/ForwardSimData=V02-02-00 Geometry/HcalCommonData=V01-05-00 Geometry/HcalSimData=V01-03-00 Geometry/HcalTestBeamData=V01-08-00 Geometry/MTCCTrackerCommonData=V01-01-00 Geometry/MuonCommonData=V01-06-00 Geometry/MuonSimData=V01-03-00 Geometry/RPCGeometryBuilder=V01-04-00 Geometry/TrackerCommonData=V01-09-05 Geometry/TrackerRecoData=V01-04-05 Geometry/TrackerSimData=V01-02-05 Geometry/TwentyFivePercentTrackerCommonData=V00-01-00 L1Trigger/RPCTrigger=V00-15-00 MagneticField/Interpolation=V00-05-00 RecoEgamma/ElectronIdentification=V01-00-01 RecoJets/JetProducers=V05-10-12 RecoLocalCalo/EcalDeadChannelRecoveryAlgos=V01-00-00 RecoMuon/MuonIdentification=V01-12-01 RecoParticleFlow/PFBlockProducer=V02-04-02 RecoParticleFlow/PFProducer=V15-00-00 RecoParticleFlow/PFTracking=V13-01-00 SimG4CMS/Calo=V03-00-00 SimG4CMS/Forward=V02-03-18 Validation/Geometry=V00-07-00

ALL_TOOLS      += coral
ALL_SCRAM_PROJECTS += coral
coral_EX_INCLUDE := /afs/cern.ch/cms/slc6_amd64_gcc481/cms/coral/CORAL_2_3_21-cms44/include/LCG
coral_ORDER := 98000

ALL_TOOLS      += cppunit
cppunit_EX_INCLUDE := /afs/cern.ch/cms/slc6_amd64_gcc481/external/cppunit/1.12.1/include
cppunit_EX_LIB := cppunit
cppunit_EX_USE := sockets

ALL_TOOLS      += curl
curl_EX_INCLUDE := /afs/cern.ch/cms/slc6_amd64_gcc481/external/curl/7.28.0-cms/include
curl_EX_LIB := curl

ALL_TOOLS      += cvs2git

ALL_TOOLS      += cython
cython_EX_USE := python

ALL_TOOLS      += das-client
das-client_EX_USE := python

ALL_TOOLS      += db4
db4_EX_INCLUDE := /afs/cern.ch/cms/slc6_amd64_gcc481/external/db4/4.4.20/include
db4_EX_LIB := db

ALL_TOOLS      += dbs-client

ALL_TOOLS      += dcap
dcap_EX_INCLUDE := /afs/cern.ch/cms/slc6_amd64_gcc481/external/dcap/2.47.8-cms2/include
dcap_EX_LIB := dcap

ALL_TOOLS      += distcc-ccompiler
distcc-ccompiler_EX_USE := gcc-ccompiler

ALL_TOOLS      += distcc-cxxcompiler
distcc-cxxcompiler_EX_USE := gcc-cxxcompiler

ALL_TOOLS      += distcc-f77compiler
distcc-f77compiler_EX_USE := gcc-f77compiler

ALL_TOOLS      += dmtcp

ALL_TOOLS      += doxygen

ALL_TOOLS      += dpm
dpm_EX_INCLUDE := /afs/cern.ch/cms/slc6_amd64_gcc481/external/dpm/1.8.0.1/include
dpm_EX_LIB := dpm
dpm_EX_LIBDIR := /afs/cern.ch/cms/slc6_amd64_gcc481/external/dpm/1.8.0.1/lib

ALL_TOOLS      += evtgen
evtgen_EX_INCLUDE := /afs/cern.ch/cms/slc6_amd64_gcc481/external/evtgen/1.3.0-cms11/include
evtgen_EX_LIB := EvtGen EvtGenExternal
evtgen_EX_USE := hepmc pythia8 tauolapp photospp

ALL_TOOLS      += evtgenlhc
evtgenlhc_EX_INCLUDE := /afs/cern.ch/cms/slc6_amd64_gcc481/external/evtgenlhc/9.1-cms3
evtgenlhc_EX_LIB := evtgenlhc
evtgenlhc_EX_USE := clhep

ALL_TOOLS      += expat
expat_EX_INCLUDE := /afs/cern.ch/cms/slc6_amd64_gcc481/external/expat/2.0.1/include
expat_EX_LIB := expat

ALL_TOOLS      += fastjet-contrib-archive
fastjet-contrib-archive_EX_INCLUDE := /afs/cern.ch/cms/slc6_amd64_gcc481/external/fastjet-contrib/1.009-cms3/include
fastjet-contrib-archive_EX_LIB := EnergyCorrelator GenericSubtractor JetCleanser JetFFMoments Nsubjettiness ScJet SubjetCounting VariableR

ALL_TOOLS      += fastjet-contrib
fastjet-contrib_EX_INCLUDE := /afs/cern.ch/cms/slc6_amd64_gcc481/external/fastjet-contrib/1.009-cms3/include
fastjet-contrib_EX_LIB := fastjetcontribfragile

ALL_TOOLS      += fastjet
fastjet_EX_INCLUDE := /afs/cern.ch/cms/slc6_amd64_gcc481/external/fastjet/3.0.3-cms2/include
fastjet_EX_LIB := fastjetplugins fastjettools siscone siscone_spherical fastjet

ALL_TOOLS      += fftjet
fftjet_EX_INCLUDE := /afs/cern.ch/cms/slc6_amd64_gcc481/external/fftjet/1.5.0/include
fftjet_EX_LIB := fftjet

ALL_TOOLS      += fftw3
fftw3_EX_INCLUDE := /afs/cern.ch/cms/slc6_amd64_gcc481/external/fftw3/3.3.2/include
fftw3_EX_LIB := fftw3

ALL_TOOLS      += frontier_client
frontier_client_EX_INCLUDE := /afs/cern.ch/cms/slc6_amd64_gcc481/external/frontier_client/2.8.10-cms/include
frontier_client_EX_LIB := frontier_client
frontier_client_EX_USE := zlib openssl expat python

ALL_TOOLS      += gcc-ccompiler
gcc-ccompiler_EX_FLAGS_CFLAGS  := -O2 -pthread
gcc-ccompiler_EX_FLAGS_CSHAREDOBJECTFLAGS  := -fPIC

ALL_TOOLS      += gcc-cxxcompiler
gcc-cxxcompiler_EX_FLAGS_CXXSHAREDFLAGS  := -shared -Wl,-E
gcc-cxxcompiler_EX_FLAGS_CXXSHAREDOBJECTFLAGS  := -fPIC
gcc-cxxcompiler_EX_FLAGS_LDFLAGS  := -Wl,-E -Wl,--hash-style=gnu
gcc-cxxcompiler_EX_FLAGS_CPPDEFINES  := -DGNU_GCC -D_GNU_SOURCE
gcc-cxxcompiler_EX_FLAGS_CXXFLAGS  := -O2 -pthread -pipe -Werror=main -Werror=pointer-arith -Werror=overlength-strings -Wno-vla -Werror=overflow -Wstrict-overflow -std=c++11 -msse3 -ftree-vectorize -Wno-strict-overflow -Werror=array-bounds -Werror=format-contains-nul -Werror=type-limits -fvisibility-inlines-hidden -fno-math-errno --param vect-max-version-for-alias-checks=50 -fipa-pta -felide-constructors -fmessage-length=0 -ftemplate-depth-300 -Wall -Wno-non-template-friend -Wno-long-long -Wreturn-type -Wunused -Wparentheses -Wno-deprecated -Werror=return-type -Werror=missing-braces -Werror=unused-value -Werror=address -Werror=format -Werror=sign-compare -Werror=write-strings -Werror=delete-non-virtual-dtor -Werror=maybe-uninitialized -Werror=strict-aliasing -Werror=narrowing -Werror=uninitialized -Werror=unused-but-set-variable -Werror=reorder -Werror=unused-variable -Werror=conversion-null -Werror=return-local-addr -Werror=switch -fdiagnostics-show-option -Wno-unused-local-typedefs -Wno-attributes
gcc-cxxcompiler_EX_FLAGS_LD_UNIT  := -r -m elf_x86_64

ALL_TOOLS      += gcc-f77compiler
gcc-f77compiler_EX_LIB := gfortran m
gcc-f77compiler_EX_FLAGS_FFLAGS  := -fno-second-underscore -Wunused -Wuninitialized -O2 -cpp
gcc-f77compiler_EX_FLAGS_FOPTIMISEDFLAGS  := -O2
gcc-f77compiler_EX_FLAGS_FSHAREDOBJECTFLAGS  := -fPIC

ALL_TOOLS      += gccxml

ALL_TOOLS      += gdb

ALL_TOOLS      += gdbm
gdbm_EX_INCLUDE := /afs/cern.ch/cms/slc6_amd64_gcc481/external/gdbm/1.10/include
gdbm_EX_LIB := gdbm

ALL_TOOLS      += geant4-parfullcms

ALL_TOOLS      += geant4
geant4_EX_USE := geant4core geant4vis xerces-c

ALL_TOOLS      += geant4core
geant4core_EX_INCLUDE := /afs/cern.ch/cms/slc6_amd64_gcc481/external/geant4/10.00.p02/include/Geant4
geant4core_EX_LIB := G4digits_hits G4error_propagation G4event G4geometry G4global G4graphics_reps G4intercoms G4interfaces G4materials G4parmodels G4particles G4persistency G4physicslists G4processes G4readout G4run G4tracking G4track G4analysis
geant4core_EX_USE := clhep
geant4core_EX_FLAGS_CXXFLAGS  := -ftls-model=global-dynamic -pthread
geant4core_EX_FLAGS_CPPDEFINES  := -DGNU_GCC -DG4V9

ALL_TOOLS      += geant4data

ALL_TOOLS      += geant4static
geant4static_EX_LIB := geant4-static
geant4static_EX_USE := clhep xerces-c
geant4static_EX_FLAGS_CXXFLAGS  := -ftls-model=global-dynamic -pthread

ALL_TOOLS      += geant4vis
geant4vis_EX_LIB := G4FR G4modeling G4RayTracer G4Tree G4visHepRep G4vis_management G4visXXX G4VRML G4GMocren G4zlib
geant4vis_EX_USE := geant4core

ALL_TOOLS      += git

ALL_TOOLS      += glibc

ALL_TOOLS      += glimpse

ALL_TOOLS      += gmake

ALL_TOOLS      += gnuplot

ALL_TOOLS      += graphviz
graphviz_EX_USE := expat zlib libjpg libpng

ALL_TOOLS      += gsl
gsl_EX_INCLUDE := /afs/cern.ch/cms/slc6_amd64_gcc481/external/gsl/1.10/include
gsl_EX_LIB := gsl gslcblas

ALL_TOOLS      += hector
hector_EX_INCLUDE := /afs/cern.ch/cms/slc6_amd64_gcc481/external/hector/1_3_4-cms19/include
hector_EX_LIB := Hector

ALL_TOOLS      += hepmc
hepmc_EX_LIB := HepMCfio HepMC
hepmc_EX_USE := hepmc_headers

ALL_TOOLS      += hepmc_headers
hepmc_headers_EX_INCLUDE := /afs/cern.ch/cms/slc6_amd64_gcc481/external/hepmc/2.06.07-cms4/include

ALL_TOOLS      += heppdt
heppdt_EX_INCLUDE := /afs/cern.ch/cms/slc6_amd64_gcc481/external/heppdt/3.03.00/include
heppdt_EX_LIB := HepPDT HepPID

ALL_TOOLS      += herwig
herwig_EX_INCLUDE := /afs/cern.ch/cms/slc6_amd64_gcc481/external/herwig/6.521-cms7/include
herwig_EX_LIB := herwig herwig_dummy
herwig_EX_USE := f77compiler lhapdf photos

ALL_TOOLS      += herwigpp
herwigpp_EX_INCLUDE := /afs/cern.ch/cms/slc6_amd64_gcc481/external/herwigpp/2.7.1-cms5/include

ALL_TOOLS      += histfactory
histfactory_EX_LIB := HistFactory
histfactory_EX_USE := roofitcore roofit roostats rootcore roothistmatrix rootgpad rootxml rootfoam

ALL_TOOLS      += igprof

ALL_TOOLS      += jemalloc
jemalloc_EX_INCLUDE := /afs/cern.ch/cms/slc6_amd64_gcc481/external/jemalloc/3.5.0/include
jemalloc_EX_LIB := jemalloc

ALL_TOOLS      += jimmy
jimmy_EX_LIB := jimmy
jimmy_EX_USE := f77compiler herwig jimmy_headers

ALL_TOOLS      += jimmy_headers
jimmy_headers_EX_INCLUDE := /afs/cern.ch/cms/slc6_amd64_gcc481/external/jimmy/4.2-cms7/include

ALL_TOOLS      += ktjet
ktjet_EX_INCLUDE := /afs/cern.ch/cms/slc6_amd64_gcc481/external/ktjet/1.06-cms3/include
ktjet_EX_LIB := KtEvent
ktjet_EX_FLAGS_CPPDEFINES  := -DKTDOUBLEPRECISION

ALL_TOOLS      += lapack

ALL_TOOLS      += lcov

ALL_TOOLS      += lhapdf
lhapdf_EX_INCLUDE := /afs/cern.ch/cms/slc6_amd64_gcc481/external/lhapdf/5.9.1-cms3/include
lhapdf_EX_LIB := LHAPDF
lhapdf_EX_USE := f77compiler

ALL_TOOLS      += lhapdfwrap
lhapdfwrap_EX_LIB := LHAPDFWrap
lhapdfwrap_EX_USE := lhapdf

ALL_TOOLS      += libhepml
libhepml_EX_INCLUDE := /afs/cern.ch/cms/slc6_amd64_gcc481/external/libhepml/0.2.1/interface
libhepml_EX_LIB := hepml

ALL_TOOLS      += libjpg
libjpg_EX_INCLUDE := /afs/cern.ch/cms/slc6_amd64_gcc481/external/libjpg/8b/include
libjpg_EX_LIB := jpeg

ALL_TOOLS      += libpng
libpng_EX_INCLUDE := /afs/cern.ch/cms/slc6_amd64_gcc481/external/libpng/1.6.0-cms/include
libpng_EX_LIB := png
libpng_EX_USE := zlib

ALL_TOOLS      += libtiff
libtiff_EX_INCLUDE := /afs/cern.ch/cms/slc6_amd64_gcc481/external/libtiff/3.9.4/include
libtiff_EX_LIB := tiff
libtiff_EX_USE := libjpg zlib

ALL_TOOLS      += libungif
libungif_EX_INCLUDE := /afs/cern.ch/cms/slc6_amd64_gcc481/external/libungif/4.1.4/include
libungif_EX_LIB := ungif
libungif_EX_USE := libjpg zlib

ALL_TOOLS      += libuuid
libuuid_EX_INCLUDE := /afs/cern.ch/cms/slc6_amd64_gcc481/external/libuuid/2.22.2/include
libuuid_EX_LIB := uuid
libuuid_EX_USE := sockets

ALL_TOOLS      += libxml2
libxml2_EX_INCLUDE := /afs/cern.ch/cms/slc6_amd64_gcc481/external/libxml2/2.7.7/include/libxml2
libxml2_EX_LIB := xml2

ALL_TOOLS      += llvm-analyzer-ccompiler
llvm-analyzer-ccompiler_EX_USE := llvm-ccompiler

ALL_TOOLS      += llvm-analyzer-cxxcompiler
llvm-analyzer-cxxcompiler_EX_USE := llvm-cxxcompiler

ALL_TOOLS      += llvm-ccompiler
llvm-ccompiler_EX_USE := gcc-ccompiler

ALL_TOOLS      += llvm-cxxcompiler
llvm-cxxcompiler_EX_USE := gcc-cxxcompiler
llvm-cxxcompiler_EX_FLAGS_CXXFLAGS  := -Wno-c99-extensions -Wno-c++11-narrowing -D__STRICT_ANSI__ -Wno-unused-private-field -Wno-unknown-pragmas -Wno-unused-command-line-argument
llvm-cxxcompiler_EX_FLAGS_REM_CXXFLAGS  := -Wno-non-template-friend -Werror=format-contains-nul -Werror=maybe-uninitialized -Werror=unused-but-set-variable -Wno-unused-local-typedefs -Werror=return-local-addr -fipa-pta -mrecip

ALL_TOOLS      += llvm-f77compiler
llvm-f77compiler_EX_USE := gcc-f77compiler

ALL_TOOLS      += llvm
llvm_EX_INCLUDE := /afs/cern.ch/cms/slc6_amd64_gcc481/external/llvm/3.4-cms2/include
llvm_EX_LIB := clang
llvm_EX_FLAGS_LDFLAGS  := -Wl,-undefined -Wl,suppress
llvm_EX_FLAGS_CXXFLAGS  := -D_DEBUG -D_GNU_SOURCE -D__STDC_CONSTANT_MACROS -D__STDC_FORMAT_MACROS -D__STDC_LIMIT_MACROS -O3 -fomit-frame-pointer -fPIC -Wno-enum-compare -Wno-strict-aliasing -fno-rtti

ALL_TOOLS      += mcdb
mcdb_EX_INCLUDE := /afs/cern.ch/cms/slc6_amd64_gcc481/external/mcdb/1.0.2-cms/interface
mcdb_EX_LIB := mcdb
mcdb_EX_USE := xerces-c

ALL_TOOLS      += mctester
mctester_EX_INCLUDE := /afs/cern.ch/cms/slc6_amd64_gcc481/external/mctester/1.25.0a-cms19/include
mctester_EX_LIB := HEPEvent HepMCEvent MCTester
mctester_EX_USE := root hepmc

ALL_TOOLS      += meschach
meschach_EX_INCLUDE := /afs/cern.ch/cms/slc6_amd64_gcc481/external/meschach/1.2.pCMS1/include
meschach_EX_LIB := meschach

ALL_TOOLS      += millepede
millepede_EX_USE := sockets pcre zlib

ALL_TOOLS      += opengl
opengl_EX_LIB := GL GLU
opengl_EX_USE := x11

ALL_TOOLS      += openldap
openldap_EX_USE := openssl db4

ALL_TOOLS      += openssl
openssl_EX_INCLUDE := /afs/cern.ch/cms/slc6_amd64_gcc481/external/openssl/0.9.8e__1.0.1-cms/include
openssl_EX_LIB := ssl crypto

ALL_TOOLS      += oracle
oracle_EX_INCLUDE := /afs/cern.ch/cms/slc6_amd64_gcc481/external/oracle/11.2.0.3.0__10.2.0.4.0/include
oracle_EX_LIB := clntsh
oracle_EX_USE := sockets

ALL_TOOLS      += oracleocci
oracleocci_EX_LIB := occi
oracleocci_EX_USE := oracle

ALL_TOOLS      += pacparser
pacparser_EX_INCLUDE := /afs/cern.ch/cms/slc6_amd64_gcc481/external/pacparser/1.3.1/include
pacparser_EX_LIB := pacparser

ALL_TOOLS      += pcre
pcre_EX_INCLUDE := /afs/cern.ch/cms/slc6_amd64_gcc481/external/pcre/7.9__8.33/include
pcre_EX_LIB := pcre
pcre_EX_USE := zlib bz2lib

ALL_TOOLS      += photos
photos_EX_LIB := photos
photos_EX_USE := photos_headers f77compiler

ALL_TOOLS      += photos_headers
photos_headers_EX_INCLUDE := /afs/cern.ch/cms/slc6_amd64_gcc481/external/photos/215.5/include

ALL_TOOLS      += photospp
photospp_EX_INCLUDE := /afs/cern.ch/cms/slc6_amd64_gcc481/external/photospp/3.56/include
photospp_EX_LIB := PhotosFortran PhotosCxxInterface
photospp_EX_USE := hepmc

ALL_TOOLS      += professor

ALL_TOOLS      += protobuf
protobuf_EX_INCLUDE := /afs/cern.ch/cms/slc6_amd64_gcc481/external/protobuf/2.4.1/include
protobuf_EX_LIB := protobuf

ALL_TOOLS      += py2-cjson
py2-cjson_EX_USE := python

ALL_TOOLS      += py2-cx-oracle
py2-cx-oracle_EX_USE := python oracle

ALL_TOOLS      += py2-ipython
py2-ipython_EX_USE := python

ALL_TOOLS      += py2-lint
py2-lint_EX_USE := python

ALL_TOOLS      += py2-matplotlib
py2-matplotlib_EX_USE := python zlib libpng py2-numpy py2-python-dateutil

ALL_TOOLS      += py2-networkx

ALL_TOOLS      += py2-numpy
py2-numpy_EX_USE := python zlib lapack

ALL_TOOLS      += py2-pycurl
py2-pycurl_EX_USE := python

ALL_TOOLS      += py2-pygithub

ALL_TOOLS      += py2-python-dateutil
py2-python-dateutil_EX_USE := python

ALL_TOOLS      += py2-scipy
py2-scipy_EX_USE := python py2-numpy lapack

ALL_TOOLS      += py2-sqlalchemy
py2-sqlalchemy_EX_USE := python

ALL_TOOLS      += pyclang
pyclang_EX_USE := python

ALL_TOOLS      += pydata
pydata_EX_FLAGS_LDFLAGS  := $(PYDATA_BASE)/lib/pydata.o
pydata_EX_FLAGS_NO_RECURSIVE_EXPORT  := 1

ALL_TOOLS      += pyminuit2

ALL_TOOLS      += pyqt
pyqt_EX_USE := python qt sip

ALL_TOOLS      += pythia6
pythia6_EX_LIB := pythia6 pythia6_dummy pythia6_pdfdummy
pythia6_EX_USE := pythia6_headers f77compiler

ALL_TOOLS      += pythia6_headers
pythia6_headers_EX_INCLUDE := /afs/cern.ch/cms/slc6_amd64_gcc481/external/pythia6/426/include

ALL_TOOLS      += pythia8
pythia8_EX_INCLUDE := /afs/cern.ch/cms/slc6_amd64_gcc481/external/pythia8/205-cms/include
pythia8_EX_LIB := pythia8
pythia8_EX_USE := hepmc lhapdf

ALL_TOOLS      += python-ldap
python-ldap_EX_USE := openssl openldap python

ALL_TOOLS      += python
python_EX_INCLUDE := /afs/cern.ch/cms/slc6_amd64_gcc481/external/python/2.7.6/include/python2.7
python_EX_LIB := python2.7
python_EX_USE := sockets

ALL_TOOLS      += qd
qd_EX_INCLUDE := /afs/cern.ch/cms/slc6_amd64_gcc481/external/qd/2.3.13/include
qd_EX_LIB := qd_f_main qdmod qd

ALL_TOOLS      += qt
qt_EX_INCLUDE := /afs/cern.ch/cms/slc6_amd64_gcc481/external/qt/4.8.1/include/QtOpenGL /afs/cern.ch/cms/slc6_amd64_gcc481/external/qt/4.8.1/include/QtGui
qt_EX_LIB := QtOpenGL QtGui
qt_EX_USE := qtbase qt3support x11 opengl

ALL_TOOLS      += qt3support
qt3support_EX_INCLUDE := /afs/cern.ch/cms/slc6_amd64_gcc481/external/qt/4.8.1/include/Qt3Support
qt3support_EX_LIB := Qt3Support
qt3support_EX_USE := qtbase
qt3support_EX_FLAGS_CPPDEFINES  := -DQT3_SUPPORT

ALL_TOOLS      += qtbase
qtbase_EX_INCLUDE := /afs/cern.ch/cms/slc6_amd64_gcc481/external/qt/4.8.1/include /afs/cern.ch/cms/slc6_amd64_gcc481/external/qt/4.8.1/include/Qt /afs/cern.ch/cms/slc6_amd64_gcc481/external/qt/4.8.1/include/QtCore /afs/cern.ch/cms/slc6_amd64_gcc481/external/qt/4.8.1/include/QtXml
qtbase_EX_LIB := QtCore QtXml
qtbase_EX_USE := zlib
qtbase_EX_FLAGS_CPPDEFINES  := -DQT_ALTERNATE_QTSMANIP -DQT_CLEAN_NAMESPACE -DQT_THREAD_SUPPORT

ALL_TOOLS      += qtdesigner
qtdesigner_EX_INCLUDE := /afs/cern.ch/cms/slc6_amd64_gcc481/external/qt/4.8.1/include/QtDesigner
qtdesigner_EX_LIB := QtDesigner
qtdesigner_EX_USE := qtbase qt

ALL_TOOLS      += qtextra
qtextra_EX_INCLUDE := /afs/cern.ch/cms/slc6_amd64_gcc481/external/qt/4.8.1/include/QtScript
qtextra_EX_LIB := QtScript
qtextra_EX_USE := qtbase

ALL_TOOLS      += rivet
rivet_EX_INCLUDE := /afs/cern.ch/cms/slc6_amd64_gcc481/external/rivet/1.8.2-cms8/include
rivet_EX_LIB := Rivet

ALL_TOOLS      += roofit
roofit_EX_LIB := RooFit
roofit_EX_USE := roofitcore rootcore rootmath roothistmatrix

ALL_TOOLS      += roofitcore
roofitcore_EX_INCLUDE := /afs/cern.ch/cms/slc6_amd64_gcc481/lcg/roofit/5.34.18-cms4/include
roofitcore_EX_LIB := RooFitCore
roofitcore_EX_USE := rootcore roothistmatrix rootgpad rootminuit

ALL_TOOLS      += roostats
roostats_EX_LIB := RooStats
roostats_EX_USE := roofitcore roofit rootcore roothistmatrix rootgpad

ALL_TOOLS      += root
root_EX_USE := rootphysics

ALL_TOOLS      += root_interface
root_interface_EX_INCLUDE := /afs/cern.ch/cms/slc6_amd64_gcc481/lcg/root/5.34.18-cms5/include

ALL_TOOLS      += rootcint
rootcint_EX_INCLUDE := /afs/cern.ch/cms/slc6_amd64_gcc481/lcg/root/5.34.18-cms5/cint
rootcint_EX_LIB := Core Cint
rootcint_EX_USE := root_interface sockets pcre zlib

ALL_TOOLS      += rootcintex
rootcintex_EX_LIB := Cintex
rootcintex_EX_USE := rootrflx rootcint

ALL_TOOLS      += rootcore
rootcore_EX_LIB := Tree Net
rootcore_EX_USE := rootmathcore rootthread

ALL_TOOLS      += rooteg
rooteg_EX_LIB := EG
rooteg_EX_USE := rootgraphics

ALL_TOOLS      += rooteve
rooteve_EX_LIB := Eve
rooteve_EX_USE := rootgeompainter rootrgl

ALL_TOOLS      += rootfoam
rootfoam_EX_LIB := Foam
rootfoam_EX_USE := roothistmatrix

ALL_TOOLS      += rootgeom
rootgeom_EX_LIB := Geom
rootgeom_EX_USE := rootrio rootmathcore

ALL_TOOLS      += rootgeompainter
rootgeompainter_EX_LIB := GeomPainter
rootgeompainter_EX_USE := rootgeom rootgraphics

ALL_TOOLS      += rootgpad
rootgpad_EX_LIB := Gpad Graf
rootgpad_EX_USE := roothistmatrix

ALL_TOOLS      += rootgraphics
rootgraphics_EX_LIB := TreePlayer Graf3d Postscript
rootgraphics_EX_USE := rootgpad

ALL_TOOLS      += rootguihtml
rootguihtml_EX_LIB := GuiHtml
rootguihtml_EX_USE := rootinteractive

ALL_TOOLS      += roothistmatrix
roothistmatrix_EX_LIB := Hist Matrix
roothistmatrix_EX_USE := rootcore

ALL_TOOLS      += roothtml
roothtml_EX_LIB := Html
roothtml_EX_USE := rootgpad

ALL_TOOLS      += rootinteractive
rootinteractive_EX_LIB := Gui
rootinteractive_EX_USE := libjpg libpng rootgpad rootrint

ALL_TOOLS      += rootmath
rootmath_EX_LIB := GenVector MathMore
rootmath_EX_USE := rootcore gsl

ALL_TOOLS      += rootmathcore
rootmathcore_EX_LIB := MathCore
rootmathcore_EX_USE := rootcint

ALL_TOOLS      += rootminuit
rootminuit_EX_LIB := Minuit
rootminuit_EX_USE := rootgpad

ALL_TOOLS      += rootminuit2
rootminuit2_EX_LIB := Minuit2
rootminuit2_EX_USE := rootgpad

ALL_TOOLS      += rootmlp
rootmlp_EX_LIB := MLP
rootmlp_EX_USE := rootgraphics

ALL_TOOLS      += rootphysics
rootphysics_EX_LIB := Physics
rootphysics_EX_USE := roothistmatrix

ALL_TOOLS      += rootpy
rootpy_EX_LIB := PyROOT
rootpy_EX_USE := rootgraphics

ALL_TOOLS      += rootrflx
rootrflx_EX_LIB := Reflex
rootrflx_EX_USE := gccxml root_interface
rootrflx_EX_FLAGS_GENREFLEX_CPPFLAGS  := -DCMS_DICT_IMPL -D_REENTRANT -DGNUSOURCE -D__STRICT_ANSI__
rootrflx_EX_FLAGS_GENREFLEX_GCCXMLOPT  := -m64
rootrflx_EX_FLAGS_GENREFLEX_ARGS  := --deep

ALL_TOOLS      += rootrgl
rootrgl_EX_LIB := RGL
rootrgl_EX_USE := rootinteractive rootgraphics

ALL_TOOLS      += rootrint
rootrint_EX_LIB := Rint
rootrint_EX_USE := rootcint

ALL_TOOLS      += rootrio
rootrio_EX_LIB := RIO
rootrio_EX_USE := rootcint

ALL_TOOLS      += rootspectrum
rootspectrum_EX_LIB := Spectrum
rootspectrum_EX_USE := roothistmatrix

ALL_TOOLS      += rootthread
rootthread_EX_LIB := Thread
rootthread_EX_USE := rootrio

ALL_TOOLS      += roottmva
roottmva_EX_LIB := TMVA
roottmva_EX_USE := rootmlp rootminuit

ALL_TOOLS      += rootxml
rootxml_EX_LIB := XMLParser
rootxml_EX_USE := rootcore libxml2

ALL_TOOLS      += rootxmlio
rootxmlio_EX_LIB := XMLIO
rootxmlio_EX_USE := rootrio

ALL_TOOLS      += self
self_EX_INCLUDE := /afs/cern.ch/work/t/tklijnsm/Production/Chain1_RunningGPs/kt1/CMSSW_7_1_14/src /afs/cern.ch/work/t/tklijnsm/Production/Chain1_RunningGPs/kt1/CMSSW_7_1_14/include/LCG /afs/cern.ch/cms/slc6_amd64_gcc481/cms/cmssw/CMSSW_7_1_14/src /afs/cern.ch/cms/slc6_amd64_gcc481/cms/cmssw/CMSSW_7_1_14/include/LCG
self_EX_LIBDIR := /afs/cern.ch/work/t/tklijnsm/Production/Chain1_RunningGPs/kt1/CMSSW_7_1_14/lib/slc6_amd64_gcc481 /afs/cern.ch/work/t/tklijnsm/Production/Chain1_RunningGPs/kt1/CMSSW_7_1_14/external/slc6_amd64_gcc481/lib /afs/cern.ch/cms/slc6_amd64_gcc481/cms/cmssw/CMSSW_7_1_14/lib/slc6_amd64_gcc481 /afs/cern.ch/cms/slc6_amd64_gcc481/cms/cmssw/CMSSW_7_1_14/external/slc6_amd64_gcc481/lib
self_EX_FLAGS_SYMLINK_DEPTH_CMSSW_SEARCH_PATH  := 2
self_EX_FLAGS_LLVM_ANALYZER  := llvm-analyzer
self_EX_FLAGS_SKIP_TOOLS_SYMLINK  := cxxcompiler ccompiler f77compiler gcc-cxxcompiler gcc-ccompiler gcc-f77compiler llvm-cxxcompiler llvm-ccompiler llvm-f77compiler llvm-analyzer-cxxcompiler llvm-analyzer-ccompiler icc-cxxcompiler icc-ccompiler icc-f77compiler x11 dpm
self_EX_FLAGS_DEFAULT_COMPILER  := gcc
self_EX_FLAGS_EXTERNAL_SYMLINK  := PATH LIBDIR CMSSW_SEARCH_PATH
self_EX_FLAGS_NO_EXTERNAL_RUNTIME  := LD_LIBRARY_PATH PATH CMSSW_SEARCH_PATH
self_EX_FLAGS_OVERRIDABLE_FLAGS  := CPPDEFINES CXXFLAGS FFLAGS CFLAGS CPPFLAGS LDFLAGS
self_ORDER := 20000
IS_PATCH:=

ALL_TOOLS      += sherpa
sherpa_EX_INCLUDE := /afs/cern.ch/cms/slc6_amd64_gcc481/external/sherpa/2.1.1-cms5/include/SHERPA-MC
sherpa_EX_LIB := SherpaMain ToolsMath ToolsOrg
sherpa_EX_USE := hepmc lhapdf qd blackhat fastjet sqlite

ALL_TOOLS      += sigcpp
sigcpp_EX_INCLUDE := /afs/cern.ch/cms/slc6_amd64_gcc481/external/sigcpp/2.2.10-cms4/include/sigc++-2.0
sigcpp_EX_LIB := sigc-2.0

ALL_TOOLS      += sip
sip_EX_USE := python

ALL_TOOLS      += sloccount

ALL_TOOLS      += sockets
sockets_EX_LIB := nsl crypt dl rt

ALL_TOOLS      += sqlite
sqlite_EX_INCLUDE := /afs/cern.ch/cms/slc6_amd64_gcc481/external/sqlite/3.7.17/include
sqlite_EX_LIB := sqlite3

ALL_TOOLS      += tauola
tauola_EX_LIB := pretauola tauola
tauola_EX_USE := f77compiler tauola_headers

ALL_TOOLS      += tauola_headers
tauola_headers_EX_INCLUDE := /afs/cern.ch/cms/slc6_amd64_gcc481/external/tauola/27.121.5/include

ALL_TOOLS      += tauolapp
tauolapp_EX_INCLUDE := /afs/cern.ch/cms/slc6_amd64_gcc481/external/tauolapp/1.1.4-cms10/include
tauolapp_EX_LIB := TauolaCxxInterface TauolaFortran TauolaTauSpinner
tauolapp_EX_USE := hepmc f77compiler pythia8 lhapdf

ALL_TOOLS      += tbb
tbb_EX_INCLUDE := /afs/cern.ch/cms/slc6_amd64_gcc481/external/tbb/42_20131118oss/include
tbb_EX_LIB := tbb

ALL_TOOLS      += tcmalloc
tcmalloc_EX_LIB := tcmalloc

ALL_TOOLS      += tcmalloc_minimal
tcmalloc_minimal_EX_LIB := tcmalloc_minimal

ALL_TOOLS      += thepeg
thepeg_EX_INCLUDE := /afs/cern.ch/cms/slc6_amd64_gcc481/external/thepeg/1.9.2p1-cms/include
thepeg_EX_LIB := ThePEG LesHouches
thepeg_EX_USE := lhapdf gsl

ALL_TOOLS      += tkonlinesw
tkonlinesw_EX_INCLUDE := /afs/cern.ch/cms/slc6_amd64_gcc481/external/tkonlinesw/2.7.0-cms2/include
tkonlinesw_EX_LIB := ICUtils Fed9UUtils
tkonlinesw_EX_USE := xerces-c

ALL_TOOLS      += tkonlineswdb
tkonlineswdb_EX_LIB := DeviceDescriptions Fed9UDeviceFactory
tkonlineswdb_EX_USE := tkonlinesw oracle oracleocci

ALL_TOOLS      += toprex
toprex_EX_LIB := toprex
toprex_EX_USE := toprex_headers f77compiler

ALL_TOOLS      += toprex_headers
toprex_headers_EX_INCLUDE := /afs/cern.ch/cms/slc6_amd64_gcc481/external/toprex/4.23/include

ALL_TOOLS      += valgrind
valgrind_EX_INCLUDE := /afs/cern.ch/cms/slc6_amd64_gcc481/external/valgrind/3.9.0-cms4/include

ALL_TOOLS      += vdt
vdt_EX_LIB := vdt
vdt_EX_USE := vdt_headers

ALL_TOOLS      += vdt_headers
vdt_headers_EX_INCLUDE := /afs/cern.ch/cms/slc6_amd64_gcc481/cms/vdt/v0.3.2-cms/include

ALL_TOOLS      += x11
x11_EX_USE := sockets

ALL_TOOLS      += xerces-c
xerces-c_EX_INCLUDE := /afs/cern.ch/cms/slc6_amd64_gcc481/external/xerces-c/2.8.0/include
xerces-c_EX_LIB := xerces-c

ALL_TOOLS      += xrootd
xrootd_EX_INCLUDE := /afs/cern.ch/cms/slc6_amd64_gcc481/external/xrootd/3.2.4-cms2/include/xrootd
xrootd_EX_LIB := XrdUtils XrdClient

ALL_TOOLS      += xz
xz_EX_INCLUDE := /afs/cern.ch/cms/slc6_amd64_gcc481/external/xz/5.0.3__5.1.2alpha-cms5/include
xz_EX_LIB := lzma

ALL_TOOLS      += yaml-cpp
yaml-cpp_EX_INCLUDE := /afs/cern.ch/cms/slc6_amd64_gcc481/external/yaml-cpp/0.5.1-cms/include
yaml-cpp_EX_LIB := yaml-cpp
yaml-cpp_EX_USE := boost

ALL_TOOLS      += yoda
yoda_EX_INCLUDE := /afs/cern.ch/cms/slc6_amd64_gcc481/external/yoda/1.0.4-cms/include
yoda_EX_LIB := YODA
yoda_EX_USE := boost

ALL_TOOLS      += zlib
zlib_EX_INCLUDE := /afs/cern.ch/cms/slc6_amd64_gcc481/external/zlib/1.2.8/include
zlib_EX_LIB := z

