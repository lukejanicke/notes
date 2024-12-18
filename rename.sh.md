# rename.sh

*Just a simple shell script to bulk rename files using a Comma Separated List (CSV).*

Put `rename.sh` in the same folder as the files to be renamed.

```shell
cp ~/Documents/Notes/rename.sh .
```

```zsh
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
```

Prepare a `rename.csv` file with current file names in the first column and new file names in the second column.

```shell
touch rename.csv
```

The script will strip any spaces after commas and line endings (whether CLRF or LF).

Here is an example.

```csv
1.pdf,Chapter 1.pdf
2.pdf,Chapter 2.pdf
3.pdf,Chapter 3.pdf
etc.
```

Make the script executable.

```shell
chmod +x rename.sh
```

Preview the changes.

```shell
./rename.sh -p rename.csv
```

Run the changes.

```shell
./rename.sh rename.csv
```
