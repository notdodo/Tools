#!/usr/bin/env bash
hash=$(curl -s -L -k ${1} | python3 -c 'import mmh3,sys,codecs; print(mmh3.hash(codecs.encode(sys.stdin.buffer.read(), "base64")))')
shodan search http.favicon.hash:${hash} |tee outfull.txt
shodan search http.favicon.hash:${hash} --fields ip_str,port --separator " " | awk -d '{print $1 ":" $2}' |tee outips.txt
