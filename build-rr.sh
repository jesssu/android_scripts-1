# Build script to compile Resurrection Remix ROM



# Get intial time of script startup
res1=$(date +%s.%N)



# Specify colors for shell
red='tput setaf 1'
green='tput setaf 2'
yellow='tput setaf 3'
blue='tput setaf 4'
violet='tput setaf 5'
cyan='tput setaf 6'
white='tput setaf 7'
normal='tput sgr0'



$red
echo -e ""
echo -e ""
echo -e "****************RESURRECTION REMIX ROM KITKAT 4.4+****************"
echo -e ""
echo -e ""



# Confirm 'make clean'
$violet
echo -e "\n\nDo you want to make clean? \n"
echo ""
echo -e "1. Yes"
echo -e "2. No"
echo ""
echo ""
read askclean

if [ "$askclean" == "1" ]
then
	echo ""
	echo ""
        echo -e "\n\nCleaning... \n\n"
	echo ""
	echo ""
        make clean
fi



# Setup environment
$green
echo -e ""
echo -e ""
echo -e "Setting up build environment..."
echo -e ""
echo -e ""
. build/envsetup.sh



# Lunch device
$red
echo -e ""
echo -e ""
echo -e "Choose your device from the lunch menu..."
echo -e ""
echo -e ""
lunch



# Start compilation
$normal
echo -e ""
echo -e ""
echo -e "Starting compilation of Resurrection Remix ROM..."
echo -e ""
echo -e ""
mka bacon
echo -e ""



# Get elapsed time
$blue
res2=$(date +%s.%N)
echo "${bldgrn}Total time elapsed: ${txtrst}${grn}$(echo "($res2 - $res1) / 60"|bc ) minutes ($(echo "$res2 - $res1"|bc ) seconds) ${txtrst}"



# Compilation complete
$red
echo -e ""
echo -e ""
echo -e "****************RESURRECTION REMIX ROM KITKAT 4.4+****************"
echo -e ""
echo -e "*********************ENJOY THE ROM********************"
echo -e ""
echo -e ""