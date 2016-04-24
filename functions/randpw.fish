function randpw --description 'generate a password'
	switch (count $argv)

	case 0
		tr -dc 'a-zA-Z0-9_@#%&,;()-' < /dev/urandom | head -c32;echo;

	case 1
		tr -dc 'a-zA-Z0-9_@#%&,;()-' < /dev/urandom | head -c$argv;echo;

	case \*
		echo "Only none or 1 argument is valid!"
		return 1

	end
end
