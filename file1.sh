#1) creating user sam,bob and james
sudo useradd sam -m -s /usr/bin/bash -g users
sudo useradd bob -m -s /usr/bin/bash -g users
sudo useradd james -m -s /usr/bin/bash -g users

#2) permissions to users (sam,bob and james)
setfacl -m u:sam:r test.txt
setfacl -m u:bob:w test.txt
setfacl -m u:james:x test.txt


#3) installing nvm and node versions
sudo apt install curl 
curl https://raw.githubusercontent.com/creationix/nvm/master/install.sh | bash 
nvm --version
nvm install node
nvm install --lts
nvm install 11.5
nvm use 20.3.0
nvm use 11.5.0

#4) installing mongodb
sudo apt-get install mongodb


#5) creating projects directory
mkdir projects


#6) creating custom command
gedit .bashrc
# after opening of .bashrc file write "hello your name" at the end of the file.


#7) write a current date time every 5 min in a log file
log_file="log.txt" 

while true; do
    current_time=$(date "+%Y-%m-%d %H:%M:%S")  
    echo "$current_time" >> "$log_file"  
    sleep 300 
done

#8) Schedule the sh file in crontab
touch testing_file.sh
echo (5 * * * * * date >> /home/shtlp_0061/Linux-Assessment/testing_file.txt) >> crontab -e



#9) creating multiple files and searching for the word "Hello" in evey text file
echo "Amidst the bustling city streets, the scent of freshly brewed coffee wafted through the air, mingling with the gentle hum of conversation. People hurriedly walked by, their faces buried in smartphones, oblivious to the world around them. The sun peeked through the skyscrapers, casting long shadows on the pavement. In this urban jungle, dreams and ambitions intertwined, as individuals pursued their Hello aspirations, seeking success and fulfillment. The city thrived with its vibrant energy, promising endless possibilities for those brave enough to chase them." > tempFile1.txt

echo "Amidst the bustling city streets, the scent of freshly brewed coffee wafted through the air, mingling with the gentle hum of conversation. People hurriedly walked by, their faces buried in smartphones, oblivious Hello to the world around them." > tempFile2.txt

echo "Amidst the bustling city streets, the scent of Hello freshly brewed coffee wafted through the air" > tempFile3.txt

ls

grep "Hello" *.txt


#10) vi editor
vi test.txt
# i have added command for replacement in test.txt file 

#11) Get all processes that have been running for more than 2 hours
ps -eo pid,etime,args --sort=start_time --no-headers | awk '{split($2, time, ":"); if (time[1] >= 2) print $0}'

#12) finding all images greater than 2MB in a folder and move them to another folder.
mkdir new

var1=$(pwd)

var=$(find "$var1" -name '*.jpeg' -size +2M)

mv "$var" "$var1/new"


#13) Take a rough content of 1000 lines in a file(any format) and split this using split command in with equal number of lines in each file.
split -l 500 -d big_file.txt output_file







