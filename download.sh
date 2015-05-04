exit
set -xe
if [ ! -e icons ]
then
	if [ ! -e Yoritsuki ]
	then
		if [ ! -e yoritsuki_win.zip ]
		then
			wget http://www.hybridworks.jp/apps/yoritsuki/gifts/yoritsuki_win.zip
		fi
		unzip yoritsuki_win.zip
	fi
	chmod u+rw -R Yoritsuki
	mkdir icons
	mv 'Yoritsuki/Icons(png file)' icons/transparent
	mkdir -p icons/transparent
	cd icons/transparent
	for i in *.png
	do
		ls "$i"
		i=$(printf '%q' "$i")
		pwd
		ls '"'$i'"'
		convert "$i" -background white -flatten ../white/"$i"
	done
	cd ../..
	rm -rf Yoritsuki
fi
