# functions

# scan all dirs for git changes
function gscan() {
  for d in */
  do
    pwd=$(PWD)
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
  openssl s_client -showcerts -servername $1 -connect $1:443 2> /dev/null | openssl x509 -noout -enddate
}

# remove ssh host from known hosts file
