function psgrep --description 'show matching processes for $argv'
	switch (count $argv)

	case 0
		echo -e "No argument given!\nDo you expect me to guess what you're looking for?"
		return 1

	case 1
		ps aux | grep $argv | grep -v grep

	case \*
		echo "Only 1 argument is valid!"
		return 1

	end
end
