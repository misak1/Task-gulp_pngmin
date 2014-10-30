#!/bin/sh
INPUT="output_min/"
FILES="*.png"

mkdir drawable-xxhdpi drawable-xhdpi drawable-hdpi drawable-mdpi
cd ${INPUT}
for FILE in ${FILES}
do
  cp ${FILE} ../drawable-xxhdpi/${FILE}
  convert ${FILE} -resize 66.6666% ../drawable-xhdpi/${FILE}
  convert ${FILE} -resize 50% ../drawable-hdpi/${FILE}
  convert ${FILE} -resize 33.3333% ../drawable-mdpi/${FILE}
done
