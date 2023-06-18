#creating user sam,bob and james
sudo useradd sam -m -s /usr/bin/bash -g users
sudo useradd bob -m -s /usr/bin/bash -g users
sudo useradd james -m -s /usr/bin/bash -g users

#creating projects directory
mkdir projects


#creating custom command
gedit .bashrc
# after opening of .bashrc file write "hello your name" at the end of the file.


#write a current date time every 5 min in a log file
log_file="log.txt" 

while true; do
    current_time=$(date "+%Y-%m-%d %H:%M:%S")  
    echo "$current_time" >> "$log_file"  
    sleep 300 
done


#creating multiple files and searching for the word "Hello" in evey text file
echo "Amidst the bustling city streets, the scent of freshly brewed coffee wafted through the air, mingling with the gentle hum of conversation. People hurriedly walked by, their faces buried in smartphones, oblivious to the world around them. The sun peeked through the skyscrapers, casting long shadows on the pavement. In this urban jungle, dreams and ambitions intertwined, as individuals pursued their Hello aspirations, seeking success and fulfillment. The city thrived with its vibrant energy, promising endless possibilities for those brave enough to chase them." > tempFile1.txt

echo "Amidst the bustling city streets, the scent of freshly brewed coffee wafted through the air, mingling with the gentle hum of conversation. People hurriedly walked by, their faces buried in smartphones, oblivious Hello to the world around them." > tempFile2.txt

echo "Amidst the bustling city streets, the scent of Hello freshly brewed coffee wafted through the air" > tempFile3.txt

ls

grep "Hello" *.txt









