#!/bin/bash
COVER_PATH="/tmp/conky_cover.jpg"

URL=$(playerctl metadata mpris:artUrl 2>/dev/null)

if [ -n "$URL" ]; then
    if [[ "$URL" == file://* ]]; then
        cp "${URL#file://}" "$COVER_PATH"
    else
        curl -s "$URL" -o "$COVER_PATH"
    fi
else
    rm -f "$COVER_PATH"
fi
