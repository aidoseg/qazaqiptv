 . | "<channel id=\""+.ch_id+"\">", "<icon src=\""+.ch_icon+"\" />",
"<display-name>"+.ch_name[0]."0"+"</display-name>", 
if (.ch_name[1]."1" !=null) then "<display-name>"+.ch_name[1]."1"+"</display-name>" else empty end,
if (.ch_name[2]."2" !=null) then "<display-name>"+.ch_name[2]."2"+"</display-name>" else empty end,
if (.ch_name[3]."3" !=null) then "<display-name>"+.ch_name[3]."3"+"</display-name>" else empty end,
if (.ch_name[4]."4" !=null) then "<display-name>"+.ch_name[4]."4"+"</display-name>" else empty end, "</channel>" 
