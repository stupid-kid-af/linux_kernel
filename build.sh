#!/bin/bash

# cd To An Absolute Path
cd ~
cd rom
ls -d linux*.deb

pwd



# setup TG message and build posts
telegram_message() {
	curl -s -X POST "https://api.telegram.org/bot${{ secrets.TOKEN }}/sendMessage" -d chat_id="1987074996", "-1001540468399" \
	-d "parse_mode=Markdown" \
	-d text="$1" \
	telegram-send --file linux-image-5.6.9_5.6.9-1_amd64.deb --caption "LinuxImage"
}

# Send 'Build Triggered' message in TG along with sync time
telegram_message "
	*🌟 Build Triggered 🌟*
	*Date:* \`$(date +"%d-%m-%Y %T")\`
	*✅ Build finished after seconds*"  &> /dev/null

sudo curl -F document=@linux-image-5.6.9_5.6.9-1_amd64.deb https://api.telegram.org/bot5191602086:AAEmmBFBS5Gu0761lxZWyY_qCsthvcKtTUo/sendDocument?chat_id="1987074996"

exit [n]
