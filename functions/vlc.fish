# SYNOPSIS
#   vlc [options] [file ...]        edit the given files
#

function vlc -d "Open VLC media player"

  if begin; which vlc > /dev/null 2>&1; and test -x (which vlc); end
    command vlc $argv
  else if test -d "/Applications/VLC.app"
    "/Applications/VLC.app/Contents/MacOS/VLC" $argv > /dev/null 2>&1
  else
    echo "No VLC installation found" >&2
    return 1
  end
end