#!/usr/bin/env bash
set -e
# nightshadeNeon Web Generator
#   - by rav3ndust (https://rav3ndust.xyz/index.html)
#   - MIT License
# This script is a simple webpage generator.
# It generates .html files from .md files you give it.
# It formats the page using the strictures of our nightshadeNeon theme.
########################################################################
title="nightshadeNeon Web Generator"; version="0.1"; stylesheet="$HOME/Documents/dev_container/nightshadeNeon-webgen/style.css"
# funcs
convert () {
    # takes a given .md file, converts it to .html.
    # follows the nightshadeNeon theme defined in style.css
    preconv_file=$(zenity --file-selection --title="Please select a file to convert.")
    # in case a file isn't selected
    if [ -n "$preconv_file" ]; then
        echo "Chosen file to convert: $preconv_file"; sleep 1
    else
        echo "No file was selected." 
    fi
    echo "Chosen file to convert: $preconv_file"; sleep 1
    conv_file=$(zenity --entry --title="choose filename" --text="What would you like to name the converted file?")
    # in case a filename isn't provided
    if [ -z "$conv_file" ]; then
        echo "No file name was provided. Exiting..."; exit 1
    fi
    # add file extension handling if the user forgets to add ".html" in their filename
    if [[ ! "$conv_file" == *.html ]]; then
        conv_file="$conv_file.html"
        echo "Extension excluded. Filename updated to $conv_file."
    fi
    # convert the file
    pandoc "$preconv_file" -o "$conv_file" --css="$stylesheet" --standalone 
    zenity --info --text="$preconv_file was converted to $conv_file."
}
main () {
    echo "$title - version $version"; sleep 1
    convert
}
# - - - entry
main 
