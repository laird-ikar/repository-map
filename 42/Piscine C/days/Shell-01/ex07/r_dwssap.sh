cat /etc/passwd | grep -v '^#' | sed -n 'n;p' | sed 's/^/,/' | rev | sed 's/.*\*://' | sort -r | head -n $FT_LINE2  | tail -n $(($FT_LINE2 - $FT_LINE1 + 1)) | tr "\n" " " | sed 's/, $/./'
