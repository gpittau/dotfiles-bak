#!/bin/sh

set -e

echo "digraph lattice {"

shape="shape=Mrecord, style=filled,"
git rev-list --pretty=format:"%H %h|%an:%s" "$@" |
sed "s/[\"\{\}()<>]/\\\\&/g" |
sed -n "s/^\([0-9a-f]\{40\}\) \(.*\)$/n\1 [$shape label=\"{\2}\"]/p"

git rev-list --parents "$@" |
while read commit parents
do
	for p in $parents
		do
		echo "n$commit -> n$p"
	done
done

echo "}"


