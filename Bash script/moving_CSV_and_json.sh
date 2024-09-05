#!/bin/bash
mkdir json_and_CSV  #creating directory to keep files
mv *.csv json_and_CSV
mv *.json json_and_CSV # moving all json files to json_and_CSV
cd json_and_CSV
ls  #to check the list of files in the created folder
chmod ugo+x moving_CSV_and_json.sh
