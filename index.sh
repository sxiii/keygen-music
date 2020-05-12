#!/bin/bash
# Keygen Music Opensource Radio
# Collection indexing script
# Outputs number of tracks in each format

cd music

# # #
# Real tracker music formats
formats=( xm mod it v2m sc68 s3m mid ahx sid ogg sap ym fc14 rad amd d00 nsf mo3 bp fc13 spc hsc mtm )
echo "Checked-out formats for tracker music are:"
echo ${formats[@]}

gocheck () {
	total=0
	for format in ${formats[@]}; do
	current=$(grep -r -i --include="*.$format" ./ | wc -l)
	total=$(($total + $current))
	echo "* $format: $current"
	done
}

gocheck
echo "total tracker music: $total"
abs_total=$(($abs_total + $total))

# # #
# Waveform music
formats=( ogg wav mp3 )
echo "Checked-out formats for normal waveform music are:"
echo ${formats[@]}
gocheck
echo "total waveform music: $total"
abs_total=$(($abs_total + $total))
echo "total amount of music files found: $abs_total"

# ls ./*/* | grep -i -v -e mod -e xm -e s3m -e sid -e it -e fc14 -e ahx -e v2m -e mid -e ym -e rad -e amd -e d00 -e hsc -e sc68 -e sap -e nsf -e bp -e fc13 -e spc -e hsc -e mtm -e mo3 -e ogg -e mp3 -e wav
