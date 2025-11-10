#!/bin/sh

set -ex

CDN_MERMAID="https://cdn.jsdelivr.net/npm/mermaid/dist/mermaid.min.js"
CDN_SERENITYOS_EMOJI_FONT_CSS="https://linusg.github.io/serenityos-emoji-font/SerenityOS-Emoji.css"
CDN_HIGHLIGHTJS="https://unpkg.com/@highlightjs/cdn-assets/highlight.min.js"
CDN_HIGHLIGHTJS_BASIC="https://unpkg.com/@highlightjs/cdn-assets/languages/basic.min.js"
CDN_HIGHLIGHTJS_BASH="https://unpkg.com/@highlightjs/cdn-assets/languages/bash.min.js"
CDN_HIGHLIGHTJS_GO="https://unpkg.com/@highlightjs/cdn-assets/languages/go.min.js"
CDN_HIGHLIGHTJS_C="https://unpkg.com/@highlightjs/cdn-assets/languages/c.min.js"
CDN_MATHJAX="https://cdn.jsdelivr.net/npm/mathjax@4/tex-mml-chtml.js"
CDN_CHARTJS="https://cdn.jsdelivr.net/npm/chart.js"
CDN_D3JS="https://cdn.jsdelivr.net/npm/d3@7.9.0/dist/d3.min.js"
CDN_TOPOJS="https://unpkg.com/topojson@3.0.2/dist/topojson.min.js"
CDN_TOPOJS_CLIENT="https://unpkg.com/topojson-client@3.1.0/dist/topojson-client.min.js"

fetch() {
    mode="$1"     # empty | --minimize | --minimize-and-bundle
    url="$2"
    out="$3"
    tmp="${out}.tmp.${out##*.}"

    if _CMD="$(command -v curl)"; then
        "$_CMD" -Lso "$tmp" "$url"
    elif _CMD="$(command -v wget)"; then
        "$_CMD" -qO "$tmp" "$url"
    else
        echo "ERROR: curl or wget required" >&2
        exit 1
    fi

    case "$mode" in
        --minimize|--minimize-and-bundle)
            if [ "${out##*.}" = js ] && _ESBUILD="$(command -v esbuild)"; then
                if [ "$mode" = "--minimize-and-bundle" ]; then
                    "$_ESBUILD" "$tmp" --bundle --minify --outfile="$out"
                else
                    "$_ESBUILD" "$tmp" --minify --outfile="$out"
                fi
                rm -f "$tmp"
                return
            fi
            ;;
    esac

    mv "$tmp" "$out"
}

[ -d ./static/js ] || {
    echo "ERROR: Run this script in the WERX theme folder"
    exit 1
}

fetch "" "$CDN_SERENITYOS_EMOJI_FONT_CSS" ./static/css/SerenityOS-Emoji.css
fetch --minimize-and-bundle "$CDN_MERMAID" ./static/js/mermaid.min.js
fetch "" "$CDN_HIGHLIGHTJS" ./static/js/highlight.min.js
fetch "" "$CDN_HIGHLIGHTJS_BASIC" ./static/js/highlight-basic.min.js
fetch "" "$CDN_HIGHLIGHTJS_BASH" ./static/js/highlight-bash.min.js
fetch "" "$CDN_HIGHLIGHTJS_GO" ./static/js/highlight-go.min.js
fetch "" "$CDN_HIGHLIGHTJS_C" ./static/js/highlight-c.min.js
fetch --minimize-and-bundle "$CDN_MATHJAX" ./static/js/tex-mml-chtml.js
fetch --minimize "$CDN_CHARTJS" ./static/js/chart.min.js
fetch "" "$CDN_D3JS" ./static/js/d3.min.js
fetch "" "$CDN_TOPOJS" ./static/js/topojson.min.js
fetch "" "$CDN_TOPOJS_CLIENT" ./static/js/topojson-client.min.js
