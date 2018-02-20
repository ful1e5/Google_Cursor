#!/bin/bash

cd "$( dirname "${BASH_SOURCE[0]}" )" || exit

# Google Cursors
RAWSVGS_Google="src/Google_Cursor/svgs"
INDEX_Google="src/Google_Cursor/cursor.theme"

ALIASES="src/cursorList"


echo -ne "Checking Requirements...\\r"

if  ! type "inkscape" > /dev/null ; then
    echo -e "\\nFAIL: inkscape must be installed"
    exit 1
fi

if  ! type "xcursorgen" > /dev/null ; then
    echo -e "\\nFAIL: xcursorgen must be installed"
    exit 1
fi
echo -e "Checking Requirements... DONE"



echo -ne "Making Folders... $BASENAME\\r"
DIR2X_Google="build/Google_Cursor/x2"
DIR1X_Google="build/Google_Cursor/x1"

OUTPUT_Google="$(grep --only-matching --perl-regex "(?<=Name\=).*$" $INDEX_Google)"
OUTPUT_Google=${OUTPUT_Google// /_}

mkdir -p "$DIR2X_Google"
mkdir -p "$DIR1X_Google"
mkdir -p "$OUTPUT_Google/cursors"
echo 'Making Folders... DONE';


for CUR in src/config/*.cursor; do
    BASENAME=$CUR
    BASENAME=${BASENAME##*/}
    BASENAME=${BASENAME%.*}

    echo -ne "\033[0KGenerating simple cursor pixmaps... $BASENAME\\r"

    inkscape -w 34 -f $RAWSVGS_Google/"$BASENAME".svg -e "$DIR1X_Google/$BASENAME.png" > /dev/null
    inkscape -w 68 -f $RAWSVGS_Google/"$BASENAME".svg -e "$DIR2X_Google/$BASENAME.png" > /dev/null
done
echo -e "\033[0KGenerating simple cursor pixmaps... DONE"



for i in 01 02 03 04 05 06 07 08 09 10 11 12 13 14 15 16 17 18 19 20 21 22 23 24 25 26 27 28 29 30 31 32 33 34 35 36 37 38 39 40 41 42 43 44 45 46 47 48 49 50
do
    echo -ne "\033[0KGenerating animated cursor pixmaps... $i / 50 \\r"

    inkscape -w 34 -f $RAWSVGS_Google/progress-$i.svg -e "$DIR1X_Google/progress-$i.png" > /dev/null
    inkscape -w 68 -f $RAWSVGS_Google/progress-$i.svg -e "$DIR2X_Google/progress-$i.png" > /dev/null

    inkscape -w 34 -f $RAWSVGS_Google/wait-$i.svg -e "$DIR1X_Google/wait-$i.png" > /dev/null
    inkscape -w 68 -f $RAWSVGS_Google/wait-$i.svg -e "$DIR2X_Google/wait-$i.png" > /dev/null
done
echo -e "\033[0KGenerating animated cursor pixmaps... DONE"



echo -ne "Generating cursor theme...\\r"
for CUR in src/config/*.cursor; do
    BASENAME=$CUR
    BASENAME=${BASENAME##*/}
    BASENAME=${BASENAME%.*}

    ERR="$( xcursorgen -p build/Google_Cursor "$CUR" "$OUTPUT_Google/cursors/$BASENAME" 2>&1 )"

    if [[ "$?" -ne "0" ]]; then
        echo "FAIL: $CUR $ERR"
    fi

done
echo -e "Generating cursor theme... DONE"


echo -ne "Generating shortcuts...\\r"
while read -r ALIAS ; do
    FROM=${ALIAS% *}
    TO=${ALIAS#* }

    if [ -e "$OUTPUT_Google/cursors/$FROM" ] ; then
        continue
    fi
    ln -s "$TO" "$OUTPUT_Google/cursors/$FROM"

done < $ALIASES
echo -e "\033[0KGenerating shortcuts... DONE"


echo -ne "Copying Theme Index...\\r"

    if ! [ -e "$OUTPUT_Google/$INDEX_Google" ] ; then
        cp $INDEX_Google "$OUTPUT_Google/cursor.theme"
        cp $INDEX_Google "$OUTPUT_Google/index.theme"
    fi

echo -e "\033[0KCopying Theme Index... DONE"


echo -ne "Generating Installer...\\r"
    if ! [ -e "$OUTPUT_Google/$INDEX_Google" ] ; then
        cd "$( dirname "${BASH_SOURCE[0]}" )" || exit
        cp src/in.inst Installer_Google.sh
    fi
echo -e "\033[0KGenerating Installer... DONE"

echo -ne "Making Installer Executable...\\r"
    if ! [ -e "$OUTPUT_Google/$INDEX_Google" ] ; then
        cd "$( dirname "${BASH_SOURCE[0]}" )" || exit
        gksu chmod +x Installer_Google.sh
    fi

show_Msg() {
  echo -e "\033[1;34m$@\033[0m"
}
show_command() {
  echo -e "\033[1;93m$@\033[0m"
}

echo -e "\033[0KMaking Installer Executable... DONE"

show_Msg "For Installation Use Following Command:\n\n"
show_command "\t sudo ./Installer_Google.sh\n"
exit

echo "COMPLETE!"
