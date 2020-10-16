#!/bin/sh
# script by D3D_M4N
# automater for osint
# this was designed for a parrotsec machine with the following packages
#	firefox	
echo "   ____   _____ _____ _   _ _______    __   __"
echo "  / __ \ / ____|_   _| \ | |__   __|   \ \ / / "
echo " | |  | | (___   | | |  \| |  | |  ____ \ V / "
echo " | |  | |\___ \  | | | . \ |  | |  ____  > <  "
echo " | |__| |____) |_| |_| |\  |  | |       / . \ "
echo "  \____/|_____/|_____|_| \_|  |_|      /_/ \_\ "
echo " 1. Name Search "
echo " 2. Phone Search "
echo " 3. E-Mail Search "
echo " 4. License Plate Search "
echo " 5. VIN Search"
read ch
clear
if [ "$ch" = "1" ]
then 
    echo "Enter Name (ex: michael-scott)" 
	read n
	clear
	echo "Enter State Initials (ex: ny)" 
	read s
	echo "Enter City (ex: scranton)" 
	read c
	clear
	firefox www.fastpeoplesearch.com/name/$n-$c-$s
	firefox www.searchpeoplefree.com/find/$n/$s/$c
#	firefox www.peoplesearchnow.com/person/$n_$c_$s
	firefox www.truepeoplesearch.com/results?name=$n&citystatezip=$c,$s
	firefox www.spokeo.com/$n?loaded=1

fi

if [ "$ch" = "2" ]
then 
    echo "Enter Phone Number (ex: 123-456-7890)" 
	read p
	clear
	firefox www.fastpeoplesearch.com/$p
	firefox www.searchpeoplefree.com/phone-lookup/$p
#	firefox www.peoplesearchnow.com/phone/%p%
	firefox www.whitepages.com/phone/1-$p
	firefox www.thatsthem.com/phone/$p

fi

if [ "$ch" = "3" ]
then 
    echo "Enter E-Mail (ex: 12345@example.com)" 
	read em
	clear
	firefox www.skymem.info/srch?q=$em&ss=home
	firefox www.melissa.com/v2/lookups/emailcheck/email/?email=$em&site=
fi

if [ "$ch" = "4" ]
then 
    echo "Enter License Plate (ex: 1abc234)" 
	read lic
	clear
	echo "Enter State Initials" 
	read s
	firefox www.faxvin.com/license-plate-lookup/result?plate=$lic&state=$s
	firefox www.findbyplate.com/US/$s/$lic/
fi

if [ "$ch" = "5" ]
then 
    echo "Enter VIN (Vehicle Id Number)" 
	read vin
	clear
	firefox www.vehiclehistory.com/vin-report/$vin
	firefox www.vindecoderz.com/EN/check-lookup/$vin
fi