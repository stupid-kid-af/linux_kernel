#!/bin/bash

# cd To An Absolute Path
cd ~
cd rom
ls -d linux*.deb

pwd



# setup TG message and build posts
telegram_message() {
	curl -s -X POST "https://api.telegram.org/bot5191602086:AAEmmBFBS5Gu0761lxZWyY_qCsthvcKtTUo/sendMessage" -d chat_id="1987074996", "-1001540468399" \
	-d "parse_mode=Markdown" \
	-d text="$1" 

}

# Send 'Build Triggered' message in TG along with sync time
telegram_message "
	*🌟 Build Triggered 🌟*
	*Date:* \`$(date +"%d-%m-%Y %T")\`
	*✅ Build finished after seconds*"  &> /dev/null

wget https://raw.githubusercontent.com/stupid-kid-af/Telegram_Bot_For_Sending_Files/main/main.py
wget https://raw.githubusercontent.com/stupid-kid-af/Telegram_Bot_For_Sending_Files/main/telegram_api.py

python main.py


exit [n]
