*ETL Pipeline Bash Script*

*Overview*

This Bash script performs a simple ETL (Extract, Transform, Load) process for CoreDataEngineers' financial data. It downloads a CSV file, transforms the data, and loads it into a target directory.

*Environment Variables*

- `CSV_URL`: URL of the CSV file to be downloaded

*Extract*

- Downloads the CSV file from the specified URL


- Saves the file to the `raw` folder


- Confirms that the file has been saved

*Transform*

- Renames the `Variable_code` column to `variable_code`


- Selects only the `year`, `Value`, `Units`, and `variable_code` columns


- Saves the transformed data to `2023_year_finance.csv` in the `Transformed` folder


- Confirms that the file has been loaded

*Load*

- Loads the transformed data into the `Gold` directory


- Confirms that the file has been saved

*Task 2*

- Schedules the script to run daily at 12:00 AM using cron jobs

*Task 3*

- Moves all CSV and JSON files from one folder to another folder named `json_and_CSV`
 
