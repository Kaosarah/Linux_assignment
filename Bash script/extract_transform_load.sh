pwd
cd Desktop
#!/bin/bash
csv_url="https://www.stats.govt.nz/assets/Uploads/Annual-enterprise-survey/Annual-enterprise-survey-2023-financial-year-provisional/Download-data/annual-enterprise-survey-2023-financial-year-provisional.csv"  # declaring environment variable to store the URL
extract_folder="raw"   # variable to store directory name
mkdir -p $extract_folder
curl -O $csv_url
cd raw
ls
cd -
mv annual-enterprise-survey-2023-financial-year-provisional.csv raw/
cd raw
ls
if [ -f "$csv_url" ];then echo "File exists in raw folder"; else echo "File does not exists in raw folder";fi
if [ -f "annual-enterprise-survey-2023-financial-year-provisional.csv" ];then echo "File exists in raw folder"; else echo "File does not exists in raw folder";fi
cd -
head annual-enterprise-survey-2023-financial-year-provisional.csv  
head raw/annual-enterprise-survey-2023-financial-year-provisional.csv
sed -i 's/Variable_code/variable_code/' annual-enterprise-survey-2023-financial-year-provisional.csv
sed -i 's/Variable_code/variable_code/' raw/annual-enterprise-survey-2023-financial-year-provisional.csv
head annual-enterprise-survey-2023-financial-year-provisional.csv 
head raw/annual-enterprise-survey-2023-financial-year-provisional.csv 
mkdir Transformed
cut -d, -f1,5,6,9 annual-enterprise-survey-2023-financial-year-provisional.csv > Transformed/2023_year_finance.csv
cut -d, -f1,5,6,9 raw/annual-enterprise-survey-2023-financial-year-provisional.csv > Transformed/2023_year_finance.csv
if [ -f Transformed/2023_year_finance.csv ]; then echo "File saved successfully" else echo "File not saved" fi; if [ -f Transformed/2023_year_finance.csv ]; then echo "File saved successfully" else echo "File not saved" fi; if [ -f Transformed/2023_year_finance.csv ]; then echo "File saved successfully";  else echo "File not saved"; fi; q; if [ -f Transformed/2023_year_finance.csv ]; then echo "File saved successfully";  else echo "File not saved"; fi 
cd Desktop
if [ -f Transformed/2023_year_finance.csv ]; then echo "File saved successfully";  else echo "File not saved"; fi 
cd Transformed
mkdir Gold
mv 2023_year_finance.csv Gold
ls
if [ -f Gold/2023_year_finance.csv ]; then echo "File saved successfully";  else echo "File not saved"; fi
chmod ugo+u extract_transform_load.sh

