#!/bin/bash

# check if path parameter is set
if [ -z "$1" ]; then
   echo "ERROR: working dir not set"
   exit 1
fi

# check if the working dir is empty
if [ -f $1/*.png ]; then
   echo "ERROR: there are some .png files in the working dir"
   exit 1
fi

# start flameshot to take a screenshot
echo "...starting flameshot"
flameshot gui --path $1

# wait until the screenshot is saved
until [ -f $1/*.png ]; do
   sleep 1
done
echo "...screenshot is present, extracting text"

# convert to text
text=$( gocr -f UTF8 -i /home/honza/scripts/citt/*.png )

# save result to clipboard, remove temp files
rm /home/honza/scripts/citt/*.png > /dev/null
echo $text | xclip -selection c

echo "...done! result saved to clipboard, temp files deleted"
echo "RESULT: $text"