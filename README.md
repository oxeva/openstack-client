OpenStack Client with Heat support
==================================

[![Build Status](https://travis-ci.org/oxeva/openstack-client.svg?branch=master)](https://travis-ci.org/oxeva/openstack-client)

What is OpenStack Client
------------------------

OpenStackClient (aka OSC) is a command-line client for OpenStack that brings the command set for Compute, Identity, Image, Object Store and Block Storage APIs together in a single shell with a uniform command structure.

The primary goal is to provide a unified shell command structure and a common language to describe operations in OpenStack.

GitHub Projects :

* [openstack/python-openstackclient](https://github.com/openstack/python-openstackclient)
* [openstack/python-heatclient](https://github.com/openstack/python-heatclient)

Usage
-----

```sh
docker run --rm oxeva/openstack-client openstack --help
```

The default command is `openstack`, so you can run it interactively as described in the official [OpenStack documentation](https://docs.openstack.org/python-openstackclient/pike/cli/interactive.html)...

Source your openstack connection parameters from the openstack rc file you downloaded from horizon, then share the environment variables to the container :

```sh
source ~/my/openstack.rc
docker run --rm -it \
    -e OS_AUTH_URL=$OS_AUTH_URL \
    -e OS_PROJECT_ID=$OS_PROJECT_ID \
    -e OS_PROJECT_NAME=$OS_PROJECT_NAME \
    -e OS_USER_DOMAIN_NAME=$OS_USER_DOMAIN_NAME \
    -e OS_PROJECT_DOMAIN_ID=$OS_PROJECT_DOMAIN_ID \
    -e OS_USERNAME=$OS_USERNAME \
    -e OS_PASSWORD=$OS_PASSWORD \
    -e OS_REGION_NAME=$OS_REGION_NAME \
    -e OS_INTERFACE=$OS_INTERFACE \
    -e OS_IDENTITY_API_VERSION=$OS_IDENTITY_API_VERSION \
    oxeva/openstack-client stack list
```

We recommand You add it to your alias file :

```sh
alias openstack="docker run --rm -it -e OS_AUTH_URL=$OS_AUTH_URL -e OS_PROJECT_ID=$OS_PROJECT_ID -e OS_PROJECT_NAME=$OS_PROJECT_NAME -e OS_USER_DOMAIN_NAME=$OS_USER_DOMAIN_NAME -e OS_PROJECT_DOMAIN_ID=$OS_PROJECT_DOMAIN_ID -e OS_USERNAME=$OS_USERNAME -e OS_PASSWORD=$OS_PASSWORD -e OS_REGION_NAME=$OS_REGION_NAME -e OS_INTERFACE=$OS_INTERFACE -e OS_IDENTITY_API_VERSION=$OS_IDENTITY_API_VERSION oxeva/openstack-client openstack"
