#!/bin/bash

for temp in 0.9 0.903 0.905 0.906 0.907 0.908 0.909 0.91 0.911 0.912 0.913 0.914 0.915 0.916 0.918 0.92
do	
	rm -rf t$temp
	mkdir t$temp
	mkdir t$temp/Results/
	cp ../Nc8_24_mu2/t0.8/index.html ./t$temp/
	sed -ie "s/^<title>BMN_Bosonic_Gauged\/Nc8_24_mu2.0\/t0.8<\/title>.*/<title>BMN_Bosonic_Gauged\/Nc16_24_mu2.0\/t$temp<\/title>/" t$temp/index.html
	sed -ie "s/^<h1>BMN_Bosonic_Gauged\/Nc8_24_mu2.0\/t0.8<\/h1>.*/<h1>BMN_Bosonic_Gauged\/Nc16_24_mu2.0\/t$temp<\/h1>/" t$temp/index.html
	cp /Users/abhishek/Documents/Coding_Projects/BMN_Matrix_Model/BMN_Bosonic/New_Analysis_Block_50/0.125/L24N16/$temp/Output_Files/Results/*.png ./t$temp/Results/

done

cp /Users/abhishek/Documents/Coding_Projects/BMN_Matrix_Model/BMN_Bosonic/New_Analysis_Block_50/0.125/L24N16/*.png ./Obs/Results/
