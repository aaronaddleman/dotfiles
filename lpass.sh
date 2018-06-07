# TODO: scan lpass ls and create aliases for all user+password entries
if hash lpass 2>/dev/null; then
    # number of seconds for lpass to hold cache
    export set LPASS_AGENT_TIMEOUT="300"
    alias lp_st="lpass show 3624886196522927761 --password --clip"
    alias lp_pr="lpass show 7184709384643741856 --password --clip"
    alias lp_admin="lpass show 6449466126683903020 --password --clip"
    alias lp_addlemaadmin="lpass show 3777687847965314350 --password --clip"
fi
