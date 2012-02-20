#!/bin/sh
htmlfile="index.html"

echo "<html>" > ${htmlfile}
echo "<head><title>ておくれアイコンずかん</title></head>" >> ${htmlfile}
echo "<body>" >> ${htmlfile}
echo "<h1>ておくれアイコンずかん</h1>" >> ${htmlfile}
for img in `ls img/*`
do
    echo "<img src=\"${img}\" height=130 border=0 title=${img}>" >> ${htmlfile}
done
echo "</body>" >> ${htmlfile}
echo "</html>" >> ${htmlfile}
