hcvssh () {
    IP=$1
    vault ssh -mount-point=a360-ssh a360-user@"${IP}"
}
