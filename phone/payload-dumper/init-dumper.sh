#!/bin/bash
if [ ! -f ~/.payload_dumper ]; then
	echo "Executable is not present on system, downloading..."
	wget -c "https://github.com/oddlyspaced/scripts/raw/master/phone/payload-dumper/payload_dumper" -O ~/.payload_dumper
fi

echo "Copying Executables..."
cp ~/.payload_dumper payload_dumper
chmod +x payload_dumper
echo "Making directories..."
mkdir payload_input
mkdir payload_output
echo "Done"
