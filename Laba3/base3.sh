#!/bin/bash
#$1 $2 $3 $4 $5

#!/bin/bash

# Check if the number of arguments is not equal to 5
if [ $# -ne 5 ]; then
    echo "Number of parameters doesn't match. Expected 5 parameters."
    echo "Usage: bash3.sh group1 group2 user1 user2 user3"
    exit 1  # Exit the script
fi

# Create groups
groupadd $1
groupadd $2

# Create users and add them to groups
adduser $3 
adduser $4  
adduser $5  
# Add users to their respective groups
gpasswd -a $3 $1
gpasswd -a $4 $1
gpasswd -a $4 $2
gpasswd -a $5 $2
# Use a for loop to iterate from 1 to 3 and display user information
for i in $(seq 1 3); do
    echo "polzovatel user$i"
    id user$i
done

# Create directories and set group and permissions
mkdir -p /srv/dir1 /srv/dir2
chgrp $1 /srv/dir1
chgrp $2 /srv/dir2
chmod 2775 /srv/dir1 /srv/dir2

# List the contents of /srv
ls -la /srv

