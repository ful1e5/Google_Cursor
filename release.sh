#!/bin/bash
# A script for preparing binaries for version release of Google Cursors, by Abdulkaiz Khatri

declare -A names
names["GoogleDot-Blue"]="Blue cursor theme inspired on Google"
names["GoogleDot-Black"]="Black cursor theme inspired on Google"
names["GoogleDot-White"]="White cursor theme inspired on Google"
names["GoogleDot-Red"]="Red cursor theme inspired on Google"

# Cleanup old builds
rm -rf themes bin

# Building Google XCursor binaries
for key in "${!names[@]}";
do
    comment="${names[$key]}";
    ctgen build.toml -p x11 -d "bitmaps/$key" -n "$key" -c "$comment" &
    PID=$!
    wait $PID
done


# Building Google Windows binaries
for key in "${!names[@]}";
do
    comment="${names[$key]}";
    ctgen build.toml -p windows -s 16 -d "bitmaps/$key" -n "$key-Small" -c "$comment" &
    ctgen build.toml -p windows -s 24 -d "bitmaps/$key" -n "$key-Regular" -c "$comment" &
    ctgen build.toml -p windows -s 32 -d "bitmaps/$key" -n "$key-Large" -c "$comment" &
    ctgen build.toml -p windows -s 48 -d "bitmaps/$key" -n "$key-Extra-Large" -c "$comment" &
    PID=$!
    wait $PID
done

# Compressing Binaries
mkdir -p bin
cd themes

for key in "${!names[@]}";
do
    tar -czvf "../bin/${key}.tar.gz" "${key}" &
    PID=$!
    wait $PID
done


for key in "${!names[@]}";
do
    zip -rv "../bin/${key}-Windows.zip" "${key}-Small-Windows" "${key}-Regular-Windows" "${key}-Large-Windows" "${key}-Extra-Large-Windows" &
    PID=$!
    wait $PID
done

cd ..
