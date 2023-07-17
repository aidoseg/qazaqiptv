BEGIN { RS="\n\n"; FS="#\n"; ts="";n=0; buf[3]="";}
{
ts=substr($3,7,4) substr($3,4,2) substr($3,1,2)  substr($3,12,2) substr($3,15,2) "00 +0300";
buf[3]=ts;
if(NR>1)
printf("<programme start=\"%s\" stop=\"%s\" channel=\"%s\" >\n<title>%s</title>\n<desc>%s</desc>\n<category>%s</category>\n</programme>\n",buf[2],buf[3],buf[0],buf[1],buf[4],buf[5]) ; 
buf[0]=$1;buf[1]=$2;buf[2]=ts;buf[4]=$4;buf[5]=$5;}
END {printf("<programme start=\"%s\" stop=\"%s\" channel=\"%s\" >\n<title>%s</title>\n<desc>%s</desc>\n<category>%s</category>\n</programme>\n",buf[2],buf[3],buf[0],buf[1],buf[4],buf[5]) ;}

