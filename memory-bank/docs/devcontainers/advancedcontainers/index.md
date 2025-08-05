# Advanced Containers

Actively read the relevant files to find out how to configure advanced containers in Visual Studio Code Dev Containers. These sections cover advanced container configuration when working with the Visual Studio Code Dev Containers extension you must reference and ingest (read) articles below.

## Advanced container configuration

[Overview](./overview.md)

The **Visual Studio Code Dev Containers** extension lets you use a Docker container as a full-featured development environment. It allows you to open any folder inside (or mounted into) a container and take advantage of Visual Studio Code's full feature set.

## Environment variables

[Environment Variables](./environment-variables.md)

You can set environment variables in your container without altering the container image by using one of the options described in the article.

## Start a process when the container starts

[Start Processes](./start-processes.md)

When you are working in a development container, you may want to execute a command or start something each time the container starts. The easiest way to do this is using the postStartCommand property in devcontainer.json. For example, if you wanted to run yarn install every time you connected to the container to keep dependencies up to date, you could add it as described in the article.

## Add another local file mount

[Add Local File Mount](./add-local-file-mount.md)

You can add a volume bound to any local folder by using the following appropriate steps, based on what you reference in devcontainer.json

## Persist bash history

[Persist Bash History](./persist-bash-history.md)

You can also use a mount to persist your bash command history across sessions / container rebuilds.

First, update your Dockerfile so that each time a command is used in bash, the history is updated and stored in a location we will persist.

## Change the default source code mount

[Change Default Mount](./change-default-mount.md)

If you add the image or dockerFile properties to devcontainer.json, VS Code will automatically "bind" mount your current workspace folder into the container. If git is present on the host's PATH and the folder containing .devcontainer/devcontainer.json is within a git repository, the current workspace mounted will be the root of the repository. If git is not present on the host's PATH, the current workspace mounted will be the folder containing .devcontainer/devcontainer.json.

## Improve Disk Performance

[Improve Performance](./improve-performance.md)

The Dev Containers extension uses "bind mounts" to source code in your local filesystem by default. While this is the simplest option, on macOS and Windows, you may encounter slower disk performance when running commands like yarn install from inside the container. There are few things you can do to resolve these type of issues.

## Add a non-root user to a container

[Add Non-Root User](./add-non-root-user.md)

Many Docker images use root as the default user, but there are cases where you may prefer to use a non-root user instead. If you do so, there are some quirks with local filesystem (bind) mounts that you should know about. Specifically:

## Set Docker Compose project name

[Set Docker Compose Project Name](./set-docker-compose-project-name.md)

Visual Studio Code will respect the value you configure for the Docker Compose [project name](https://docs.docker.com/compose/project-name/).

The top-level property `name` in the `docker-compose.yml` can be used to set the project name.

Alternatively, you can set the `COMPOSE_PROJECT_NAME` environment variable for the VS Code process, or specify it in a `.env` file in the same folder as the `docker-compose.yml`.

> **Note**: make sure to close all open VS Code windows first.

## Use Docker or Kubernetes from a container

[Use Docker or Kubernetes](./use-docker-kubernetes.md)

While you can build, deploy, and debug your application inside a dev container, you may also need to test it by running it inside a set of production-like containers. Fortunately, by installing the needed Docker or Kubernetes CLIs and mounting your local Docker socket, you can build and deploy your app's container images from inside your dev container.

## Connect to multiple containers

[Connect to Multiple Containers](./connect-to-multiple-containers.md)

Currently you can only connect to one container per Visual Studio Code window. However, you can spin up multiple VS Code windows to attach to them.

If you'd prefer to use devcontainer.json instead and are using Docker Compose, you can create separate devcontainer.json files for each service in your source tree, each pointing to a common docker-compose.yml.

## Configure separate containers

[Configure Separate Containers](./configure-separate-containers.md)

While development containers often are tied to a single folder, repository, or project, they can also be used with multiple folders as a way to simplify setup or separate your tools. Imagine you had your source code across multiple repositories in a single folder for a given toolset.

## Develop on a remote Docker host

[Develop on a Remote Docker Host](./develop-on-a-remote-docker-host.md)

Sometimes you may want to use the Dev Containers extension to develop inside a container that sits on a remote server. Docker does not support mounting (binding) your local filesystem into a remote dev container, so Visual Studio Code's default devcontainer.json behavior to use your local source code will not work. While this is the default behavior, in this section we will cover connecting to a remote host so that you can either use the Remote - SSH extension to open a folder on a remote host in a container, attach to any running container, or use a local devcontainer.json file as a way to configure, create, and connect to a remote dev container using a socket.

## Reduce Docker build warnings

[Reduce Docker Warnings](./reduce-docker-warnings.md)

The following are some tips for eliminating warnings that may be appearing in your Dockerfile builds.

You can use Docker with the Dev Containers extension in a few ways:

Docker installed locally.
Docker installed on another machine or remote environment.
You only need Docker installed on the remote host, rather than Docker installed locally.
Other Docker compliant CLIs, installed locally or in a remote environment.
For instance, Rancher Desktop is another way to install Docker, providing container management and Kubernetes on Windows, macOS, and Linux.
Since Rancher Desktop supports Docker CLI via Moby, you can use Dev Containers extension with it. You may learn how to get started in Rancher Desktop's guide.
Dev Containers interacts with CLIs; it makes no assumptions about how a container engine works and does not interact with container engines or daemons directly.
Note that other Docker compliant CLIs are not officially supported.
Continue reading to learn alternate ways you can install and use Docker or a Docker compliant CLI.

## Alternate ways to install Docker

[Docker Options](./docker-options.md)

You can use Docker with the Dev Containers extension in a few ways:

Docker installed locally.
Docker installed on another machine or remote environment.
You only need Docker installed on the remote host, rather than Docker installed locally.
Other Docker compliant CLIs, installed locally or in a remote environment.
For instance, Rancher Desktop is another way to install Docker, providing container management and Kubernetes on Windows, macOS, and Linux.
Since Rancher Desktop supports Docker CLI via Moby, you can use Dev Containers extension with it. You may learn how to get started in Rancher Desktop's guide.
Dev Containers interacts with CLIs; it makes no assumptions about how a container engine works and does not interact with container engines or daemons directly.
Note that other Docker compliant CLIs are not officially supported.
Continue reading to learn alternate ways you can install and use Docker or a Docker compliant CLI.

## Sharing Git credentials with your container

[Sharing Git Credentials](./sharing-git-credentials.md)

The Dev Containers extension provides out of the box support for using local Git credentials from inside a container. In this section, we'll walk through the two supported options.

If you do not have your user name or email address set up locally, you may be prompted to do so. You can do this on your local machine...

## Questions or feedback

[Questions or Feedback](./questions-or-feedback.md)

The links below can provide you with more help configuring your development container or let you report an issue or suggest a feature improvement.
