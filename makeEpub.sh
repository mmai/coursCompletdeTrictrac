#!/bin/sh

cd src
pandoc -o coursCompletdeTrictrac.epub metadata.yaml \
  index.md \
  discoursPreliminaire.md \
  premierePartie.md \
  deuxiemePartie.md \
  troisiemePartie.md \
  quatriemePartie.md \
  appendix.md
echo "file ready in ./src/coursCompletdeTrictrac.epub"
