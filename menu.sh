#!/bin/bash
./passwordcheck.sh
if (test $? == 0) ; then
   option=0
   until ((option >= 1 && option <= 3))
   do
      echo "Select an Option in the range 1-3"
      echo "1. Create a Folder"
      echo "2. Copy a Folder"
      echo "3. Set a Password"
      echo -n "Please enter Option: "
      read option
      if ((option >= 1 && option <= 3)); then
        echo " "
      else
         echo " "
         echo "Please enter a Number in the Range 1 to 3"
      fi
   done    
   case $option in
        1) ./foldermaker.sh;;
        2) ./foldercopier.sh;;
        3) ./setPassword.sh;;
   esac
else
   echo "Goodbye"
   exit 0
fi
