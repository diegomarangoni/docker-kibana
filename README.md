# Supported tags and respective `Dockerfile` links

-   [`latest` (*latest/Dockerfile*)](https://github.com/diegomarangoni/docker-kibana/blob/master/Dockerfile)
-   [`source` (*source/Dockerfile*)](https://github.com/diegomarangoni/docker-kibana/blob/release/source/Dockerfile)

# How to use this image.

## Latest stable version

### Running it

    docker run -it diegomarangoni/kibana

### Forcing different version

    docker run -it -e KIBANA_VERSION=4.0.2 diegomarangoni/kibana

### Changing configuration file

You can get a copy of default configuration file:

    docker run -it diegomarangoni/kibana bash
    # echo "$(cat /opt/kibana/config/kibana.yml)"

Copy file content to a local file, do the necessary changes and run the container mounting file as a volume:

    docker run -it -v /path/to/kibana.yml:/opt/kibana/config/kibana.yml diegomarangoni/kibana

## Compiling from source

### From branch `master`

    docker run -it diegomarangoni/kibana:src

### Forcing different branch

    docker run -it -e KIBANA_BRANCH=4.0 diegomarangoni/kibana:src

You can change the configuration file like described above.
