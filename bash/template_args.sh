#!/usr/bin/env bash

# defaults
ENVIRONMENT="dev"
DRY_RUN=0

# how to use
function usage()
{
    echo "if this was a real script you would see something useful here"
    echo ""
    echo "./simple_args_parsing.sh"
    echo "-h --help"
    echo "--environment=$ENVIRONMENT"
    echo "--dry-run"
    echo ""
}

# set the envs
while [ "$1" != "" ]; do
    PARAM=`echo $1 | awk -F= '{print $1}'`
    VALUE=`echo $1 | awk -F= '{print $2}'`
    case $PARAM in
        -h | --help)
            usage
            exit
            ;;
        --environment)
            ENVIRONMENT=$VALUE
            ;;
        --dry-run)
            DRY_RUN=1
            ;;
        *)
            echo "ERROR: unknown parameter \"$PARAM\""
            usage
            exit 1
            ;;
    esac
    shift
done

CMD="echo $ENVIRONMENT"

myfn() {
    $CMD
}

dryrun() {
    echo "$CMD"
}

[[ "$DRY_RUN" -eq 0 ]] && myfn || dryrun
