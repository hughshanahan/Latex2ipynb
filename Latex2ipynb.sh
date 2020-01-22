#!/bin/bash

/usr/local/bin/pandoc -s -f latex -t markdown  $1  -o a.md --wrap=preserve
#pandoc -s -f latex -t markdown $1 -o a.md --wrap=preserve
sed "s/^[ \t]*\'\'\'/\`\`\`/g" a.md > b.md
#pandoc -s -f markdonw+backtick_code_blocks -t ipynb b.md -o $2
/usr/local/bin/pandoc -s -f markdown+backtick_code_blocks -t ipynb  b.md  -o $2
\rm a.md b.md







