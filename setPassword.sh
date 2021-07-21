# use the bash shell

#!/bin/bash

# Get the name of the folder to create from the user

read -p "Enter name of new folder: " FldrName

# Get the new password from the user, making sure it is not visible

read -p "Enter password: " SecretPword

# Create new folder

mkdir "$FldrName"

# CD to new folder

cd "$FldrName"

# Store the password in file secret.txt"

echo "$SecretPword" | sha256sum >  secret.txt
