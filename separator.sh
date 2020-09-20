#! /bin/bash





################################################
# ssh RSA key generated to avoid password promt#
################################################

#list separator function


separator () {

  local count="$1"

  myString=$(printf "%15s") 
  echo ${myString// /-} "list" ${count} ${myString// /-}
  

}

count=1 #counter for list separator number

mkdir ~/praktikum5 && touch ~/praktikum5/file{0..9}.txt # make files in the dir praktikum

separator $count >> ~/list.txt && count=$((count+1)) #plase separator heading in list file

ls -la >> ~/list.txt #redirect output to list.txt file

echo -e "Name:\n""Course:\n""Etc:" >> file1.txt #nimu_andmed 

mv file1.txt minu_andmed.txt #rename file1 to minu_andmed

echo "aine andmed" >> file9.txt && mv file9.txt aine_andmed.txt
#send aine andmed to file9 and rename it to aine_andmed

date >> file2.txt && mv file2.txt date_andmed.txt
# send date to file2 and rename the file
#add separator to the data list
separator $count >> ~/list.txt && count=$((count+1))
#add data to the list.txt file
ls -la >> ~/list.txt

#check if myName dir already exists, if not - mkdir
ssh user@192.168.18.169 '[[ -d /home/user/iso20/vjatsesalv]] || mkdir /home/user/iso20/vjatsesalv'

mv ~/praktikum5/file{3..8}.txt ~/ #move files to home dir

separator $count >> ~/list.txt && count=$((count+1))
ls -la ~/praktikum5 >> ~/list.txt #redirect contents of praktikum5 to list.txt file 

mkdir ~/praktikum5/downloads #make downloads dir

wget "http://anna.ikt.khk.ee/mihhail.karutin/avorgud/test.txt" -P ~/praktikum5/downloads #download test.txt

mkdir ~/praktikum5/backup #make backup dir

cp ~/file{3..8}.txt >> ~/praktikum5/backup  #make a backup
cp -u ~/praktikum5/{*.txt,downloads} backup
echo "----------backup---------" >> ~/list.txt
ls -la backup >> ~/list.txt

ip -a >> ~/ip.txt #net interface data to ip.txt
scp ~/ip.txt user@192.168.18.169:/home/users/iso20/vjatseslav
#copy ip.txt to remote host
scp user@192.168.18.169:/home/user/a.txt ~/a.txt #cp a.txt from remote to localhost
date >> a.txt && echo "vjatseslav" >> a.txt &&  mv a.txt vjatseslav.txt
# add date and my name to a.txt file and rename it
scp ~/vjatseslav.txt user@192.168.18.169:/home/users/iso20/vjatseslav
# cp renamed a.txt file back to remote host
rm -r ~/praktikum5/{*.txt,downloads} #del everything except backup from praktikum5

separator $count >> ~/list.txt && count=$((count+1))
ls -la ~/praktikum5 >> ~/list.txt #add list separator and redirect praktikum5 contents to list.txt

scp ~/list.txt user@192.168.18.169 ~/iso20/vjatseslav
#cp list.txt to remote host
date >> ~/praktikum5/backup/downloads/test.txt && echo "vjatseslav" >> ~/praktikum5/backup/downloads/test.txt
#add date and myName to test.txt and cp it back to remote host
scp ~/praktikum5/backup/downloads/test.txt user@192.168.18.169 ~/iso20/vjatseslav





