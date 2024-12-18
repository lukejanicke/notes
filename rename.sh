#!/bin/zsh

zparseopts -D -E p=preview

if [[ $# -eq 0 ]]; then
    print "Usage: ./rename.sh [options] rename.csv"
    print "Options:"
    print "  -p  Preview changes without renaming"
    exit 1
fi

count=1
while IFS=, read -r old new || [[ -n "$old" ]]; do
    new=${new#[[:space:]]}
    new=${new%$'\r'}
    if [[ -n $preview ]]; then
        printf "%3d: %s -> %s\n" $count "$old" "$new"
    else
        printf "%3d: %s -> %s\n" $count "$old" "$new"
        mv "$old" "$new"
    fi
    ((count++))
done < $1