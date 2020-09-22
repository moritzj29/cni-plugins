# cni-plugins

Container image for packaging the upstream containernetworking/plugin binaries.

This can be used as an init container for deploying the binaries before other meta-plugins like multus are deployed.

Image can be download from `gmehta3/cni-plugin`

To build a new image

`docker build --build-arg version=v0.8.7 -t imagetag .`

The build uses the version argument to download the pre-compiled amd64 binaries from containernetworking/plugin releases.