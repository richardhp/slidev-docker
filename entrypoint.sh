#!/bin/sh
SLIDES_DIR="/tmp/slides";
rm "./slides.md";
touch "./slides.md";
for FILE in `ls $SLIDES_DIR | sort -g`; do 
  cat "$SLIDES_DIR/$FILE" >> ./slides.md;
  echo "" >> ./slides.md;
  echo "---" >> ./slides.md;
  echo "" >> ./slides.md;
done

cat ./slides.md;

./node_modules/.bin/slidev build
