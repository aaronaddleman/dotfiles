# functions

# print echo if debug is true
debug() {
    LEVEL="$1"
    MESSAGE="$2"
    CHAR="."

    LEADER=$(printf '%*s' "$LEVEL" | tr ' ' "$CHAR")

    if [ "$DEBUG" = "true" ]; then
        echo "$LEADER $MESSAGE"
    fi
}

# scan all dirs for git changes
function gscan() {
  for d in */
  do
    pwd=$(pwd)
    cd $d
    echo "==$d=="
    git status --short
    cd $pwd
  done
  cd ~/src
}

# stop all docker conatiners
function docker_stop_containers() {
  docker stop $(docker ps -a -q)
}

# rm all docker containers
function docker_rm_containers() {
  docker rm $(docker ps -a -q)
}

# rm all docker images
function docker_rm_images() {
  docker rmi $(docker images -a -q)
}

function docker_rm_images_forced() {
  docker rmi $(docker images -a -q) --force
}

function sslexp() {
  openssl s_client -showcerts -servername $1 -connect $1:$2 2> /dev/null | openssl x509 -noout -enddate
}

# remove ssh host from known hosts file

# fetch password from 1password
function fop() {
  VAULT=$1
  NAME=$2
  op get item --vault=$VAULT "$NAME" | jq -r '.details.fields[] | select(.name | contains("password")) | .value'
}
