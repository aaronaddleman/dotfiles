if [ -d $SCRIPT_PATH/bash/resources/google-cloud-sdk ]; then
  debug "2" "loading google-cloud-sdk"
  source $SCRIPT_PATH/bash/resources/google-cloud-sdk/completion.bash.inc
  source $SCRIPT_PATH/bash/resources/google-cloud-sdk/path.bash.inc
else
  echo "download from: https://cloud.google.com/sdk/downloads#versioned"
  echo "unzip google-cloud-sdk to:"
  echo "$SCRIPT_PATH/bash/resources/google-cloud-sdk"
fi
