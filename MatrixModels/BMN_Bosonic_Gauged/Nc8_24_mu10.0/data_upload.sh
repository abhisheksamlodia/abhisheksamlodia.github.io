#!/bin/bash

#T=( '0.2' '0.3' '0.32' '0.34' '0.36' '0.38' '0.4' '0.5' '0.6' '0.7' '0.8' '0.9' '0.95' '1.0' '1.05' '1.1' '1.2' '1.3' '1.4' '1.5' '1.7' '1.9' '2.0' '2.05' '2.1' '2.2' '2.4' '2.5' '3.0' '4.0')
#T=('1.875' '1.9' '1.925' '1.95' '1.975' '1.99' '2.0' '2.01' '2.025' '2.05' '2.075' '2.1' '2.125')
for temp in  1.18 1.2 1.2025 1.205 1.2075 1.21 1.2125 1.215 1.2175 1.22 1.2225 1.225 1.2275 1.23 1.24 1.26 1.28
do
	rm -rf t$temp
	mkdir t$temp
	mkdir t$temp/Results/
	cp ../Nc8_24_mu2/t0.8/index.html ./t$temp/
	sed -ie "s/^<title>BMN_Bosonic_Gauged\/Nc8_24_mu2.0\/t0.8<\/title>.*/<title>BMN_Bosonic_Gauged\/Nc8_24_mu10.0\/t$temp<\/title>/" t$temp/index.html
	sed -ie "s/^<h1>BMN_Bosonic_Gauged\/Nc8_24_mu2.0\/t0.8<\/h1>.*/<h1>BMN_Bosonic_Gauged\/Nc8_24_mu10.0\/t$temp<\/h1>/" t$temp/index.html
	cp ~/Documents/Coding_Projects/BMN_Matrix_Model/BMN_Bosonic/New_Analysis/0.001/L24N8/$temp/Output_Files/Results/*.png ./t$temp/Results/

done

cp ~/Documents/Coding_Projects/BMN_Matrix_Model/BMN_Bosonic/New_Analysis/0.001/L24N8/*.png ./Obs/Results/
