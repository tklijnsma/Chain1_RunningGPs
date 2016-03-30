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
import pickle
import json

from Get_Histogram import Get_Histogram


########################################
# ROOT
########################################

import ROOT

print 'Importing root libraries'
ROOT.gSystem.Load("libDataFormatsFWLite.so")
ROOT.AutoLibraryLoader.enable()

ROOT.gROOT.SetBatch(True)
ROOT.gROOT.ProcessLine("gErrorIgnoreLevel = kError;")
ROOT.gStyle.SetOptFit(1011)

# Canvas
c1 = ROOT.TCanvas("c1","c1",1000,800)
c1.SetGrid()


########################################
# Main
########################################

def main():

    l = lambda vallist: [ float('{0:.3f}'.format(i)) for i in vallist ]

    # From http://arxiv.org/pdf/1508.07819v2.pdf

    analysis_bins = [ 0, 15, 26, 43, 72, 125, 200 ]
    
    data_values   = [ 9.0, 2.0, 3.4, 6.2, 4.6, 2.6, 0.7 ]
    data_err_up   = [ 6.4, 4.9, 4.8, 3.7, 2.4, 1.0, 0.5 ]
    data_err_down = [ -6.2, -5.5, -4.6, -3.5, -2.7, -1.0, -0.4 ]

    print 'Using bins:'
    print analysis_bins

    print '\n-----------------------'
    print 'Data'
    print data_values


    root_files = [
        '../kg1/Saved_root_files/HIG-RunIIWinter15GenOnly-00011.root',
        '../kt1/Saved_root_files/HIG-RunIIWinter15GenOnly-00011.root',
        ]


    res = {}
    for root_file in root_files:

        # Title
        if 'kg1' in root_file:
            run = 'Kappa_glu_1'
        elif 'kt1' in root_file:
            run = 'Kappa_top_1'
        else:
            run = 'Somekappa'
        
        if not os.path.isfile( 'Full_hist_' + run + '.pickle' ):
            Redraw_histogram( root_file, analysis_bins )

        #with open( run + '.pickle' ) as pickle_fp:
        #    H = pickle.load( pickle_fp )

        with open( run + '.json', 'r' ) as json_fp:
            D = json.load( json_fp )

        # ======================================
        # Normalize MC

        n_events = sum(D['values'])

        # Total Higgs production cross section at 8 TeV at H_mass = 125, [pb]
        H_XS = 19.47
        
        # H to 2 gamma branching ratio
        H_to_2gamma_BR = 0.08569

        # H to 2 gamma cross section
        H_to_2gamma_XS = H_to_2gamma_BR * H_XS

        # Spectrum from data is fiducial --> not enough information
        # to this fully theoretically
        # Use the given fiducial XS from paper
        H_to_2gamma_XS = 32.2

        # OR, normalize to the same integral as the data
        XS_data = sum( data_values )

        # Normalize + convert to femtobarn
        #normalisation = float(XS_data) / float(n_events)
        normalisation = H_to_2gamma_XS / float(n_events)
        D['values'] = [ normalisation * i for i in D['values'] ]

        print 
        print D['run']
        print l(D['values'])

        res[D['run']] = D['values']


    print '\n' + '='*60
    print 'Bin overview'

    for i_bin in range(len(data_values)):

        print '\n' + '-'*40
        print 'Bin {0}'.format(i_bin)

        print 'Data:       ' + str(data_values[i_bin])
        print 'kg=1, kt=0: ' + str(res['Kappa_glu_1'][i_bin])
        print 'kg=0, kt=1: ' + str(res['Kappa_top_1'][i_bin])







########################################
# Functions
########################################

def Redraw_histogram( root_file, analysis_bins ):

    H = Get_Histogram( root_file, analysis_bins, Verbose = True )

    c1.Clear()
    H.Draw()
    c1.Print( H.GetTitle() + '.pdf', 'pdf' )

    # Dump to pickle
    with open( 'Full_hist_' + H.GetTitle() + '.pickle', 'wb' ) as pickle_fp:
        pickle.dump( H, pickle_fp )

    # Dump to JSON
    json_dict = {
        'run' : H.GetTitle(),
        'analysis_bins' : analysis_bins,
        'values' : [ H.GetBinContent(i) for i in range(1,H.GetNbinsX()+1) ],
    }
    with open( H.GetTitle() + '.json', 'w' ) as json_fp:
        json.dump( json_dict, json_fp, indent=2, sort_keys=True )


########################################
# End of Main
########################################
if __name__ == "__main__":
    main()