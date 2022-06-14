#!/bin/bash

T=('0.895' '0.896' '0.897' '0.898' '0.899' '0.9' '0.901' '0.902' '0.903' '0.904' '0.905')
for temp in "${T[@]}"
do
	rm -rf t$temp
	mkdir t$temp
	mkdir t$temp/Results/
	cp ../Nc8_24_mu2/t0.8/index.html ./t$temp/
	sed -ie "s/^<title>BMN_Bosonic_Gauged\/Nc8_24_mu2.0\/t0.8<\/title>.*/<title>BMN_Bosonic_Gauged\/Nc16_24_mu1.0\/t$temp<\/title>/" t$temp/index.html
	sed -ie "s/^<h1>BMN_Bosonic_Gauged\/Nc8_24_mu2.0\/t0.8<\/h1>.*/<h1>BMN_Bosonic_Gauged\/Nc16_24_mu1.0\/t$temp<\/h1>/" t$temp/index.html
	cp /Users/abhishek/Documents/Coding_Projects/BMN_Matrix_Model/BMN_Bosonic/New_Analysis_Block_50/1.0/L24N16/$temp/Output_Files/Results/*.png ./t$temp/Results/

done

cp /Users/abhishek/Documents/Coding_Projects/BMN_Matrix_Model/BMN_Bosonic/New_Analysis_Block_50/1.0/L24N16/*.png ./Obs/Results/
