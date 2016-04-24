fish-functions
==============

Small collection of functions I'm using with the [fish shell](https://fishshell.com/)

## installation

You can install with [fisherman](https://github.com/fisherman/fisherman):

<pre>
fisher https://github.com/rullmann/fish-aliases
</pre>

Or with [oh-my-fish](https://github.com/oh-my-fish/oh-my-fish):

<pre>
omf install git@github.com:rullmann/fish-aliases.git
</pre>

## aliases / functions description

### df - df should always be human readable

Annoyed of typing `df -h`?
Fixed!

### ds - calculate size of current or a given dir and sort by size

From time to time I need to find folders which are taking much to many space. Here's the solution:

<pre>
┌ rullmann@foobar /tmp/test
└ $ ds
1.0M	2
6.2M	1
617M	3

┌ rullmann@foobar ~
└ $ ds /var/log/
1.3M	/var/log/asl/Logs
2.0M	/var/log/powermanagement
2.2M	/var/log/module/com.apple.cdscheduler
3.8M	/var/log/module/com.apple.ical
6.5M	/var/log/module
19M	/var/log/DiagnosticMessages
95M	/var/log/asl
151M	/var/log/
</pre>

### psgrep - show matching processes for $argv

Typing `ps aux | grep $arg` has come to an end:

<pre>
┌ rullmann@foobar ~
└ $ psgrep fish
rullmann         95421   0.1  0.0  2500916   4660 s010  S     2:26PM   0:03.41 fish
</pre>

### nsgrep - show open ports for $argv

Self explaining, isn't it?

### randpw - generate a password

`pwgen` is fine, but what about string passwords in one command?
Takes one argument for the length. If not provided the password is 32 characters long.