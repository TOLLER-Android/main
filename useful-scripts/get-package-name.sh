aapt dump badging $1 | awk '/package/{gsub("name=|'"'"'","");  print $2}'
