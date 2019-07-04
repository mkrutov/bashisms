#!/bin/bash
print_help() {
	echo "Usage: $0 first_match second_match log_original [output_file]"
	echo "Prints everything between first_match and second_match, from log_original into output_file"
}

if [[ $# -eq 4 ]]; then 
	sed -n "/$1/,/$2/p" < $3 > $4
elif [[ $# -eq 3 ]]; then
	sed -n "/$1/,/$2/p" < $3 
else 
	print_help
fi

