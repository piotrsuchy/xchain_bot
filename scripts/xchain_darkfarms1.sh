#!/bin/bash
# The script for checking Darkfarms1's (my favourite cryptoartist) xchain address

# change the flag "second_input" to 1 after first run of the script
# change the path to project's folder for the script to work 

cd ~/Desktop/Programming/PROGRAMMING_PRACTICE/XCHAIN_BOT

# Set the fixed values for the input
address="1DRZVQe58Tr9WxDNYdJUbye3toH1zkedX"
initialized_flag="0"

echo "$address" > input.txt
echo "$initialized_flag" >> input.txt

python main.py < input.txt

cd csv_files
column -s, -t < asset_dispenses_1DRZVQe58Tr9WxDNYdJUbye3toH1zkedX.csv | less -N -S
