# ===================================================================
# Title: Run_tests
# Description:
#  This scipt file tests all of the functions which I have 
#   created in the workout
# Input(s): data files 'count-vowels.R', 'minkowski.R', 'hex-color.R'
# Input(s): 'reverse-chars.R'
# Output(s): 'test-output.txt'
# Author: MK Larson
# Date: 11-06-2018
# ===================================================================

library('testthat')

functions <- dir('../code/functions')
lapply(paste0('../code/functions/', functions), source)

sink(file = 'test-output.txt')
test_dir('../code/tests')
sink()

