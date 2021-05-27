DIR="emr-hive-dataset/"
if [ -d "$DIR" ]; then
  # Take action if $DIR exists. #
  rm -rf ${DIR}
  echo "I'm deleting  ${DIR}..."
fi

