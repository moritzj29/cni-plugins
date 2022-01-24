# cni-plugins

This is a fork of https://github.com/ibrokethecloud/cni-plugins/ and ARM64 support was added for PI Clusters.

Container image for packaging the upstream containernetworking/plugin binaries.

This can be used as an init container for deploying the binaries before other meta-plugins like multus are deployed.

Image can be download from `rockclimber81/cni-plugins`

To build a new image

`docker buildx bake --set *.args.version=1.0.1 --push`

The build uses the version argument to download the pre-compiled amd64 and arm64 binaries from containernetworking/plugins releases.