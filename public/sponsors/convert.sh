convert -resize 260x180 -extent 260x180 -gravity center $1 $2
# Apparently order of options passed matters
# remove -extent if image is already rect
# convert -gravity center -resize 260x180 $1 $2
