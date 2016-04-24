function df --description 'df should always be human readable'
    command df -h $argv
end

function ds --description 'calculate size of current or a given dir and sort by size'
	switch (count $argv)

		case 0
		    du -hsx * .[a-zA-Z0-9_]* 2> /dev/null | \
		    egrep '^ *[0-9.]*[MG]' | sort -n > /tmp/list
		    egrep '^ *[0-9.]*M' /tmp/list
		    egrep '^ *[0-9.]*G' /tmp/list
		    rm -rf /tmp/list

		case 1
		    du -hx $argv .[a-zA-Z0-9_]* 2> /dev/null | \
		    egrep '^ *[0-9.]*[MG]' | sort -n > /tmp/list
		    egrep '^ *[0-9.]*M' /tmp/list
		    egrep '^ *[0-9.]*G' /tmp/list
		    rm -rf /tmp/list

		case \*
			echo "Only none or 1 argument is valid!"
			return 1

	end
end

function psgrep --description 'show matching processes for $argv'
	switch (count $argv)

	case 0
		echo -e "No argument given!\nDo you expect me to guess what you're looking for?"
		return 1

	case 1
		ps aux | grep $argv | grep -v grep

	case \*
		echo "Only 1 arguemnt is valid!"
		return 1

	end
end

function nsgrep --description 'show open ports for $argv'
	switch (count $argv)

	case 0
		echo -e "No argument given!\nDo you expect me to guess what you're looking for?"
		return 1

	case 1
		netstat -tulpen | grep $1 | grep -v grep

	case \*
		echo "Only 1 arguemnt is valid!"
		return 1

	end
end
