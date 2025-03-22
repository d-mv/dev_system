# Development System

Provides development environment for the projects. It is Docker-based
and includes the following tools:

- Debian OS
- Utils:
  - inetutils-ping
  - coreutils
  - libc6
  - xsel
  - gpg
  - wget
  - tmux
  - vim
  - unzip
  - git
  - git-lfs
  - fzf
  - curl
  - wget
  - silversearcher-ag
  - make
  - ruby
  - sudo
  - fish
  - task
  - fnm
  - node (v23)
  - postgres 15.6
  - pgadmin (by elestio)

## Scripts

> To run scripts, pls use [`task` runner](https://taskfile.dev/). Script provided
to install tools locally.

- `down` - stops the system
- `compose` - builds the system
- `start-daemon` - starts the system in __daemon__ mode
- `start` - starts the system
- `re-start` - restarts the system
- `connect` - connects to the system (fish shell, main entrance)
- `base/stop` - stops the base container, *self development only*
- `base/clean` - removes the base container and image, *self development only*
- `base/build` - builds the base image, *self development only*
- `base/build-no-cache` - builds the base image without cache, *self development only*
- `base/run` - runs the base container, *self development only*
- `base/re-build` - rebuilds the base image, *self development only*
- `local/clean` - removes `local` container and images

The order is the following:

1. `base/build`
2. `start`
3. `connect`

To connect to the existing running container user:

`docker exec -it <container_id> bash`