#!/bin/sh
htmlfile="index.html"
total=`ls img/* | wc -l`
title="ておくれアイコンずかん（全${total}種類）"
echo "<html>" > ${htmlfile}
echo "<head><title>${title}</title></head>" >> ${htmlfile}
echo "<body>" >> ${htmlfile}
echo "<h1>${title}</h1>" >> ${htmlfile}
for img in `ls img/*`
do
    echo "<img src=\"${img}\" height=130 border=0 title=${img}>" >> ${htmlfile}
done
echo "</body>" >> ${htmlfile}
echo "</html>" >> ${htmlfile}
