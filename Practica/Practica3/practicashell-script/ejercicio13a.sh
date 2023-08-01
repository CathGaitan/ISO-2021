#!/bin/bash
for i in `seq 1 100`; do
	echo "Numero: $i - $i^2: `expr $i \* $i`"
done
