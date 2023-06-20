#!/bin/bash

for i in $(seq 1 20); do
	for hash in $(echo -n $i | base64); do
		urlencode $hash | sed '/^[A-Za-z0-9+/]*[=]\{0,2\}$/d' >> hashes.list
	done
done
