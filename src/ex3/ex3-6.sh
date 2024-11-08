#!/bin/bash

# Check if the input argument is provided
if [ -z "$1" ]; then
  echo "Usage: $0 <directory_name>"
  exit 1
fi

DIR_NAME=$1

# Check if the directory exists, create it if it does not
if [ ! -d "$DIR_NAME" ]; then
  mkdir "$DIR_NAME"
else
  echo "Directory '$DIR_NAME' already exists."
fi

# Navigate into the directory
cd "$DIR_NAME"

# Create 5 text files
for i in {0..4}; do
  echo "This is file$i.txt" > "file$i.txt"
  echo "file$i.txt created."
done

# Compress the files into a tar archive
TAR_FILE="files.tar"
tar -cf "$TAR_FILE" file*.txt

echo "Files compressed into $TAR_FILE."

# Create a new subdirectory and move the tar file into it
NEW_DIR="${DIR_NAME}"
mkdir "$NEW_DIR"
mv "$TAR_FILE" "$NEW_DIR"

# Navigate to the new directory and extract the tar file
cd "$NEW_DIR"
tar -xf "$TAR_FILE"

echo "Tar file extracted in $NEW_DIR."
exit 0
