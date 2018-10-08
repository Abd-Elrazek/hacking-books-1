fdupes -r -q -N -s -d .
if [ -f fileInfo.txt ]
then
	echo ''
else
	exiftool -T -filename -PageCount -s3 -FileSize -ext pdf .>fileInfo.txt;
fi;
echo "|File Name|PageCount|FileSize|"
echo "| --- | --- | --- |"

cat fileInfo.txt|awk -F '\t' '{print "|["$1"](https://github.com/hktalent/hacking-books/raw/master/"$1") | "$2" | "$3"|"}'
