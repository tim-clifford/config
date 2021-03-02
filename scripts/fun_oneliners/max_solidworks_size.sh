#!/bin/sh
# So many backslashes...
find . -regextype sed -regex ".*.\(SLDPRT\|SLDASM\)" | sed 's/[ ()~$]/\\\\\\\\&/g' | xargs -I '{}' sh -c 'du -bm {}' | sort -nb
