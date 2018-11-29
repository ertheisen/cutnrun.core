#!/usr/bin/env r
install.packages("devtools", repos="http://cran.r-project.org")

library("devtools")

devtools::install_github('IRkernel/IRkernel')
IRkernel::installspec(name = 'ir351', displayname = 'R 3.5.1')