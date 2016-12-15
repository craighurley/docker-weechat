# docker-weechat

Run weechat in a container.

## Running

Run the container using the default weechat configuration:

```
docker run --rm -it --name weechat craighurley/docker-weechat
```

Run the container and mount a local directory:

```
docker run --rm -it -v /path/to/weechat:/home/user/.weechat --name weechat craighurley/docker-weechat
```

## Pre-configured weechat

If you want to use a pre-configured weechat, follow these steps:

1. Clone the weechat configuration repo:

  ```
  git clone https://github.com/craighurley/weechat.git weechat
  ```

1. Follow the steps documented in the `README.md` file.

1. Run the container and mount the weechat repo cloned in the previous steps:

  ```
  docker run --rm -it -v $(pwd)/weechat:/home/user/.weechat --name weechat craighurley/docker-weechat
  ```

## Links

* <https://weechat.org>
* <https://docs.docker.com>
* <https://alpinelinux.org>
* <https://github.com/craighurley/weechat>
