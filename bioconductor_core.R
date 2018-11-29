#!/usr/bin/env r

if (!requireNamespace("BiocManager"))
    install.packages("BiocManager")
BiocManager::install()

pkg_list=c(
#Core
    "dplyr","tidyr","lubridate","stringr","ggplot2","reshape2"
)

BiocManager::install(pkg_list)