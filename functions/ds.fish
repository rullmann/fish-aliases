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
