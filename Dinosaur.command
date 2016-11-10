#!/bin/sh
cd `dirname $0`

for file in `\find . -name '*.mzML'`; do
java -jar /Applications/Dinosaur/Dinosaur-1.1.3.free.jar --verbose --profiling --nReport=2 --concurrency=2 --writeMsInspect $file
done

