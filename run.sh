#!/bin/sh


do_commit() {
    cmd="git commit -a -m\"$log\""
    echo $cmd
    echo "First git push _deploy:"
    rake generate
    rake deploy
    cd _deploy;
    git pull;
    git add . -A;
    git commit -am"$log";
    git push -u origin master:master;
    cd ../

    echo "Then push size:"
    git add . -A;
    git commit -am"$log";
    git pull;
    git push -u origin site:site;

}

do_newblog() {
    rake new_post[BLOGNAME];
}

echo $#, $1
while [ $# -gt 0 ]
do
    case $1 in
        -commit |-u)
            shift;
            echo $1
            log=$1;
            do_commit;
            exit 0;;
        -new)
            shift;
            echo $1
            BLOGNAME=$1
            do_newblog;
            exit 00;;
    esac
    #shift
done
