#!/bin/env bash
#Shamelessly stolen from msspshaw at https://github.com/tgreyuk/typedoc-plugin-markdown/issues/47#issuecomment-508257371
# Flatten docs structure
cd docs/Markdown
originalPaths=`find  . -mindepth 2 -type f`
find  . -mindepth 2 -type f -exec mv {} . \;
find . -type d -empty -delete

# Strip out folder structure from links to support Github Wiki
while read -r line; do
    # Remove leading ./ from each file name
    line=` sed "s|^./||" <<< $line `
    trimmedLine=` sed "s|.*/||" <<< $line `
    sed -i '' -e "s|${line}|${trimmedLine}|" *
done <<< "$originalPaths"

# Strip out .md from raw text to support Github Wiki
sed -i '' -e 's/.md//' *

# Return to <project>
cd ../../

