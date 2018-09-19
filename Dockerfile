FROM ubuntu:latest

MAINTAINER dev@codeheadlabs.com

WORKDIR /

RUN apt-get update && \
    apt-get install -y lcov git-core curl unzip libstdc++6 lib32stdc++6 && \
    git clone https://github.com/flutter/flutter.git && \
    /flutter/bin/flutter channel beta && \
    /flutter/bin/flutter doctor


ENV PATH $PATH:/flutter/bin/cache/dart-sdk/bin:/flutter/bin