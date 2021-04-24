#!/bin/sh

if [ $# != 1 ]; then 
  echo "$0: Wrong number of arguments. (given $#, expected 1)"
  exit 1
fi

cd `dirname $0`
cd ../content

if [ -e $1 ]; then
  echo "$0: Direcotory $1 is already exists."
  exit 1
fi

mkdir $1
cd $1
today=`date '+%Y-%m-%d'`

cat <<EOF > index.md
+++
title = "タイトル"
date = $today

[extra]
author = "natsuo kawai"

[taxonomies]
tags = []
+++

<!-- more --> 
EOF

echo "$0: Created content/$1."
