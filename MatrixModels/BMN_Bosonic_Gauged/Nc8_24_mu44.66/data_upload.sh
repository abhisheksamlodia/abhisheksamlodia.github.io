#!/bin/bash

for temp in 3.9 3.925 3.95 3.975 3.98 3.99 4.0 4.01 4.02 4.03 4.04 4.05 4.075 4.1
do	
	rm -rf t$temp
	mkdir t$temp
	mkdir t$temp/Results/
	cp ../Nc8_24_mu2/t0.8/index.html ./t$temp/
	sed -ie "s/^<title>BMN_Bosonic_Gauged\/Nc8_24_mu2.0\/t0.8<\/title>.*/<title>BMN_Bosonic_Gauged\/Nc8_24_mu44.66\/t$temp<\/title>/" t$temp/index.html
	sed -ie "s/^<h1>BMN_Bosonic_Gauged\/Nc8_24_mu2.0\/t0.8<\/h1>.*/<h1>BMN_Bosonic_Gauged\/Nc8_24_mu44.66\/t$temp<\/h1>/" t$temp/index.html
	cp /Users/abhishek/Documents/Coding_Projects/BMN_Matrix_Model/BMN_Bosonic/New_Analysis_Block_50/0.00001/L24N8/$temp/Output_Files/Results/*.png ./t$temp/Results/

done

cp /Users/abhishek/Documents/Coding_Projects/BMN_Matrix_Model/BMN_Bosonic/New_Analysis_Block_50/0.00001/L24N8/*.png ./Obs/Results/
