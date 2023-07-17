#!/bin/bash
rm *.json
wget --no-check-certificate --rejected-log=wget.log -i ch2.txt
if [ -e channels.xml ]; then
	echo "File for channels exists, skeeping...";
else 
	echo "File for channels does not exist, creating...";
for f in ./*.json; do 
echo "Processing $f file for channel..."; 
jq -r -f chan.jq $f >> channels.xml
done
fi
 
if [ -e ./prog.xml ]; then
rm ./prog.xml
fi
for f in ./*.json; do 
echo "Processing $f file for programme..."; 
jq -r -f prog.jq $f | awk -f prog.awk >> prog.xml
done
echo '<?xml version="1.0" encoding="utf-8" ?>' > epgm.xml
echo '<!DOCTYPE tv SYSTEM "xmltv.dtd">' >> epgm.xml 
echo '<tv generator-info-name="Vladimir">' >> epgm.xml
cat channels.xml >> epgm.xml
cat prog.xml >> epgm.xml
echo '</tv>' >> epgm.xml
echo "Job done!"

