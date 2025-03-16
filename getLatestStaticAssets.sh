#!/bin/sh -x

CDN_MERMAID="https://cdn.jsdelivr.net/npm/mermaid/dist/mermaid.esm.min.mjs"
CDN_SERENITYOS_EMOJI_FONT_CSS="https://linusg.github.io/serenityos-emoji-font/SerenityOS-Emoji.css"

if [ ! -d ./static/js ]; then
	echo "Where are we?"
	echo "Run this script in the WERX theme folder"
fi

wget -qO ./static/js/mermaid.esm.min.mjs   "$CDN_MERMAID"
wget -qO ./static/css/SerenityOS-Emoji.css "$CDN_SERENITYOS_EMOJI_FONT_CSS"

esbuild ./static/js/mermaid.esm.min.mjs --bundle --platform=neutral --packages=external --outfile=./static/js/mermaid.min.js
rm ./static/js/mermaid.esm.min.mjs
