# Commands

build:

    docker build --force-rm -t fb-ruby .


debug:

    docker run -i -t --entrypoint=sh fb-ruby


run:

    docker run -p 9000:9000 --user $(id -u):$(id -g) --name ruby_instance -v ~/git:/home/user/git -i -P fb-ruby


login:

    docker exec -i -t -u user ruby_instance /bin/bash


logout:

    exit