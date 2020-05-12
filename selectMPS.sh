set -ue

echo
echo "### this script will let you select the MPS version to use"
echo "### to be used on MacOS machines with MPS installed through the toolbox"
echo "### (a symlink called 'MPS' is created to the installed MPS version"
echo

readarray -t versions < <( ls -d /Users/tom/Library/Application\ Support/JetBrains/Toolbox/apps/MPS/ch-0/*/*.app/Contents)
set "${versions[@]}"
select d; do
    if [[ "$d" != "" ]]; then
        ln -fs "$d" MPS
        echo
        echo "### MPS linked to $d"
        echo
        break
    fi
done
