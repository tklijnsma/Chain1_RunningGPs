#!/usr/bin/env python
"""
Thomas:
"""

########################################
# Imports
########################################


import os
from array import array
from glob import glob
from copy import deepcopy


########################################
# ROOT
########################################

import ROOT

# ======================================
# Creates arbitrary histogram name by increasing the counter
rootc = 100
def Get_Hname():
    global rootc
    Hname = 'H' + str(rootc)
    rootc += 1
    return Hname
    

########################################
# Functions
########################################

def Get_Histogram( root_file, analysis_bins = None, Verbose = False ):
    
    # If no bins are passed, take the Run2 H-->gammagamma bins
    if not analysis_bins:
        bins = [ 0, 15, 26, 43, 72, 125, 200 ]
    else:
        bins = deepcopy(analysis_bins)

    n_bins = len(bins)

    max_pt = 250
    bins.append(max_pt)

    root_fp = ROOT.TFile( root_file )
    tree = root_fp.Get('Events')
    tree.SetAlias( "gp", "Events.recoGenParticles_genParticles__GEN.obj" )


    # Unique histogram name
    Hname = Get_Hname()
    
    # Title
    if 'kg1' in root_file:
        Htitle = 'Kappa_glu_1'
    elif 'kt1' in root_file:
        Htitle = 'Kappa_top_1'
    else:
        Htitle = 'Somekappa'


    # Create the histogram

    H = ROOT.TH1F( Hname, Htitle, n_bins, array( 'd', bins) )

    draw_str = 'gp.pt_>>{0}'.format( Hname )
    sel_str  = 'gp.status_==22&&gp.pdgId_==25'

    if Verbose:
        print 'Applying draw and selection strings:'
        print '  tree.Draw("{0}", "{1}")'.format( draw_str, sel_str )
    tree.Draw(draw_str, sel_str)

    # Add the overflow bin to the last bin
    overflow = H.GetBinContent( H.GetNbinsX()+1 )
    H.SetBinContent( H.GetNbinsX(), H.GetBinContent(H.GetNbinsX()) + overflow )
    if Verbose:
        print 'Adding {0} entries from overflow to the last bin (bin {1})'.format(
            overflow, H.GetNbinsX() )

    return deepcopy(H)


########################################
# Main
# Only executed if this module is executed standalone
########################################

def main():


    print 'Importing root libraries'
    ROOT.gSystem.Load("libDataFormatsFWLite.so")
    ROOT.AutoLibraryLoader.enable()

    ROOT.gROOT.SetBatch(True)
    ROOT.gROOT.ProcessLine("gErrorIgnoreLevel = kError;")
    ROOT.gStyle.SetOptFit(1011)

    root_file = '../kg1/Saved_root_files/HIG-RunIIWinter15GenOnly-00011.root'

    H = Get_Histogram( root_file, Verbose = True )


    # ======================================
    # Canvas and drawing

    c1 = ROOT.TCanvas("c1","c1",1000,800)
    c1.SetGrid()

    c1.Clear()
    H.Draw()
    c1.Print( H.GetTitle() + '.pdf', 'pdf' )


########################################
# End of Main
########################################
if __name__ == "__main__":
    main()