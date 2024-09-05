cd Desktop
crontab -e
0 0 * * * ./raw/extract_transform_load.sh
chmod ugo+x script_schedule.sh

