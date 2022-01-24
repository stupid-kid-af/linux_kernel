#!/bin/bash

# cd To An Absolute Path
cd /tmp/rom
ls
ls
pwd



# setup TG message and build posts
telegram_message() {
	curl -s -X POST "https://api.telegram.org/bot5191602086:AAEmmBFBS5Gu0761lxZWyY_qCsthvcKtTUo/sendMessage" -d chat_id="1987074996" \
	-d "parse_mode=Markdown" \
	-d text="$1"
}

# Send 'Build Triggered' message in TG along with sync time
telegram_message "
	*🌟 Build Triggered 🌟*
	*Date:* \`$(date +"%d-%m-%Y %T")\`
	*✅ Build finished after seconds*"  &> /dev/null