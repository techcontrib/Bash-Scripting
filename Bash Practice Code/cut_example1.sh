# Display the 2nd and 7th character from each line of text.

#!/bin/bash
while read line
do echo $line | cut -c 2,7
done