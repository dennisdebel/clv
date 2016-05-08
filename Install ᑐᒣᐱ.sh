#!/bin/bash

check="/Applications/VLC.app"   # check for vlc
if [ -e "$check" ]
then
  echo "VLC is installed, continuing..."
  echo " "
else
  echo "VLC not installed, please install VLC first!"
  exit 0
fi

# http://stackoverflow.com/questions/59895/can-a-bash-script-tell-what-directory-its-stored-in
DIR="$(cd -P "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
cd $DIR #go to current working directory


#copy ᑐᒣᐱ.app to Application folder
cp -aR ᑐᒣᐱ.app /Applications/ᑐᒣᐱ.app

#copy contents from original vlc into ᑐᒣᐱ.app
cp -aR /Applications/VLC.app/Contents/_CodeSignature /Applications/ᑐᒣᐱ.app/Contents/_CodeSignature
cp -aR /Applications/VLC.app/Contents/Frameworks /Applications/ᑐᒣᐱ.app/Contents/Frameworks
cp -aR /Applications/VLC.app/Contents/PkgInfo /Applications/ᑐᒣᐱ.app/Contents/PkgInfo

echo -ne '#####                     (33%)\r' #improv loading bar
sleep 1

cp -aR /Applications/VLC.app/Contents/MacOS/bin /Applications/ᑐᒣᐱ.app/Contents/MacOS/bin
cp -aR /Applications/VLC.app/Contents/MacOS/include /Applications/ᑐᒣᐱ.app/Contents/MacOS/include
cp -aR /Applications/VLC.app/Contents/MacOS/lib /Applications/ᑐᒣᐱ.app/Contents/MacOS/lib

echo -ne '#############             (66%)\r' #improv loading bar
sleep 1

cp -aR /Applications/VLC.app/Contents/MacOS/plugins /Applications/ᑐᒣᐱ.app/Contents/MacOS/plugins
cp -aR /Applications/VLC.app/Contents/MacOS/share /Applications/ᑐᒣᐱ.app/Contents/MacOS/share
cp -aR /Applications/VLC.app/Contents/MacOS/VLC /Applications/ᑐᒣᐱ.app/Contents/MacOS/VLC


echo -ne '#######################   (100%)\r' #improv oading bar
echo -ne '\n'
echo " "
echo "ᑐᒣᐱ installed successfully in your Applications folder!"