#!/bin/bash
shopt -s globstar

strip() {
	old="$1"
	temp="$old.temp"

	if ! dotnet tool run deepstrip -- "$old" "$temp" -i **/; then
		echo "failed to strip $old"
		exit 1
	fi

	mv "$temp" "$old"
}

for f in **/*.dll; do
	strip "$f" &
done
wait