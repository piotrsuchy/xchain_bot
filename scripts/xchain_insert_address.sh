#!/bin/bash
# bash script that runs the python program and later displays the 
# csv file of the scraped address with a column command

SCRIPT_DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" >/dev/null 2>&1 && pwd )"

cd $SCRIPT_DIR
cd ..

read -p "Enter address to scrape: " address
echo $address > input_from_script.txt

read -p "Press '1' if already scraped this address or '0' for first time scraping: " initialized_flag
echo $initialized_flag >> input_from_script.txt

export RUNNING_THROUGH_BASH_SCRIPT=1

python main.py < input_from_script.txt

cd csv_files
csv_file="asset_dispenses_${address}.csv"
column -s, -t < "$csv_file" | less -N -S

export RUNNING_THROUGH_BASH_SCRIPT=0

