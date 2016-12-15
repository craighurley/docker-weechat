# Run weechat in a container
# docker run --rm -it -v /src/.weechat:/home/user/.weechat --name weechat craighurley/docker-weechat

FROM        alpine:latest
MAINTAINER  Craig Hurley

RUN         apk update \
            && apk add weechat weechat-perl weechat-python weechat-aspell aspell-en ncurses \
            && rm -rf /var/cache/apk/*

ENV         LANG C.UTF-8
ENV         TERM xterm-256color
ENV         HOME /home/user

RUN         adduser -D -h $HOME user \
            && mkdir -p $HOME/.weechat \
            && chown -R user:user $HOME

WORKDIR     $HOME

VOLUME      [ "$HOME/.weechat" ]

USER        user

ENTRYPOINT  [ "weechat" ]
