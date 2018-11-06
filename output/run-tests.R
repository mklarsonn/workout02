library('testthat')

functions <- dir('../code/functions')
lapply(pasteO('../code/functions/', functions), source)

sink(file = 'test-output.txt')
test_dir('../code/tests')
sink()

