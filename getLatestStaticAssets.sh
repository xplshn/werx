#!/bin/sh -x

CDN_MERMAID="https://cdn.jsdelivr.net/npm/mermaid/dist/mermaid.min.js"
CDN_SERENITYOS_EMOJI_FONT_CSS="https://linusg.github.io/serenityos-emoji-font/SerenityOS-Emoji.css"
CDN_HIGHLIGHTJS="https://unpkg.com/@highlightjs/cdn-assets/highlight.min.js"
CDN_HIGHLIGHTJS_BASIC="https://unpkg.com/@highlightjs/cdn-assets/languages/basic.min.js"
CDN_HIGHLIGHTJS_BASH="https://unpkg.com/@highlightjs/cdn-assets/languages/bash.min.js"
CDN_HIGHLIGHTJS_GO="https://unpkg.com/@highlightjs/cdn-assets/languages/go.min.js"
CDN_HIGHLIGHTJS_C="https://unpkg.com/@highlightjs/cdn-assets/languages/c.min.js"
CDN_MATHJAX="https://www.unpkg.com/mathjax/es5/tex-mml-svg.js"

fetch() {
    url="$1"
    output="$2"

    if command -v curl > /dev/null 2>&1; then
        curl -Lso "$output" "$url"
    elif command -v wget > /dev/null 2>&1; then
        wget -qO "$output" "$url"
    else
        echo "Neither curl nor wget is available. Please acquire one of them via dbin"
        exit 1
    fi
}

if [ ! -d ./static/js ]; then
    echo "Where are we?"
    echo "Run this script in the WERX theme folder"
fi

fetch "$CDN_SERENITYOS_EMOJI_FONT_CSS" ./static/css/SerenityOS-Emoji.css
fetch "$CDN_MERMAID" ./static/js/mermaid.min.js
fetch "$CDN_HIGHLIGHTJS" ./static/js/highlight.min.js
fetch "$CDN_HIGHLIGHTJS_BASIC" ./static/js/highlight-basic.min.js
fetch "$CDN_HIGHLIGHTJS_BASH" ./static/js/highlight-bash.min.js
fetch "$CDN_HIGHLIGHTJS_GO" ./static/js/highlight-go.min.js
fetch "$CDN_HIGHLIGHTJS_C" ./static/js/highlight-c.min.js
fetch "$CDN_MATHJAX" ./static/js/tex-mml-svg.js
