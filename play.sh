#!/bin/sh

print_usage()
{
    echo
    echo "Correct usage is : $0 platform sheet"
    echo
    echo "platform - path to directory containing chosen platform files"
    echo "sheet - file with notes"
}

if [ "$#" -ne 2 ]
then
    echo "Exactly two arguments are needed"
    print_usage
    exit 1
fi

platform_path="$1"
sheet="$2"

platform_script="$platform_path/play.sh"

./"$platform_script" "$sheet"