#!/bin/bash

set -x
set -e

name="`basename $1 .ly`"
density=150
strokewidth=30

a3width=297
a3height=420

b4width=250
b4height=353

scale="0.84"

px() {
    ###
    echo $((
        ($1*$density)/10
    ));
}

margin () {
    echo $((
        ($1-$2)/2
    ));
}

# Make build dir
mkdir -p ./build

# Compile source into pdf for $1
lilypond $1 > /tmp/lilypond-log.txt

# Change into build directory
cp ${name}.pdf ./build
cd build

### XXX: snapped to top left corner:
# Convert the input file into A3 size with appropriate scale
#pdfjam --suffix converted --paper "a3paper" --scale $scale \
#    --offset "-`margin $a3width $b4width`mm `margin $a3height $b4height`mm" \
#    ${name}.pdf
pdfjam --suffix converted --paper "a3paper" --scale $scale ${name}.pdf

sleep 1

# Create a transparent canvas the size of A3 with a density of 100 pixels per inch
convert -size `px $a3width`x`px $a3height` xc:transparent \
    -density ${density}x${density} -units pixelspercentimeter canvas.png

sleep 1

### XXX: snapped to top left corner:
# Draw a b4-sized 10px rectangle centered inside the image we just created
#convert canvas.png -fill none -stroke black -strokewidth $strokewidth -draw \
#    "rectangle -$strokewidth,-$strokewidth,$((`px $b4width`+$strokewidth)),$((`px $b4height`+$strokewidth))" canvas-rect.png
apxw=`px $a3width`
apxh=`px $a3height`
bpxw=`px $b4width`
bpxh=`px $b4height`
hmargin=`margin $apxw $bpxw`
vmargin=`margin $apxh $bpxh`
convert canvas.png -fill none -stroke black -strokewidth $strokewidth -draw \
    "rectangle $hmargin,$vmargin,$((`px $b4width`+$strokewidth+$hmargin)),$((`px $b4height`+$strokewidth+$vmargin))" \
    canvas-rect.png

sleep 1

# Convert png to pdf
convert canvas-rect.png canvas-rect.pdf

# Stamp the rect onto the A3 converted pdf
pdftk main-converted.pdf stamp canvas-rect.pdf output main-converted-rect.pdf
numpages=`pdftk main-converted-rect.pdf dump_data | grep NumberOfPages | awk -F": " '{ print $2 }'`

# Convert pdf to png (for some reason this can't be parallelized; the system will crash if you try it)
mkdir -p images
for x in $(seq 0 $(($numpages-1))); do 
convert -verbose -density 750 -units pixelspercentimeter main-converted-rect.pdf[$x] \
    -colorspace gray -quality 100 -background white -flatten ./images/$x-$name.png
done

