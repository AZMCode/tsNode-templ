#!/usr/bin/env bash
#Idea shamelessly stolen from msspshaw at https://github.com/tgreyuk/typedoc-plugin-markdown/issues/47#issuecomment-508257371
# Strip out .md from raw text to support Github Wiki
find docs/Markdown -type f -exec sed -i '' -e 's/\.md//g' {} \;


