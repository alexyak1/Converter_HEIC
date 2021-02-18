for file in *.HEIC;
do echo "$file ${file/%.HEIC/.jpg}";

if [ -f "$file" ]; then
    heif-convert $file ${file/%.HEIC/.jpg}
    rm $file
else
    echo "files with HEIC extention does not exist."
fi

done
