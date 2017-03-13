#!/bin/sh

## Skip \emph and \enc don't consider in pkgdown
find man/ -type f | xargs perl -i -p -e 's/\\enc\{([áÁàÀãÃâÂéÉêÊíÍóÓõÕôÔúÚüÜçÇ]+)\}\{[A-Za-z]+\}/\1/g'
find man/ -type f | xargs perl -i -p -e 's/\\emph\{([^\}]+)\}/\1/g'

## Build
Rscript -e "pkgdown::init_site()"
Rscript -e "pkgdown::build_site()"
