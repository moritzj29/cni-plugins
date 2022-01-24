variable "V" {
    default = "latest"
}

group "default" {
    targets = ["cni-plugins-x64", "cni-plugins-arm64"]
}

target "cni-plugins-x64" {
    dockerfile = "Dockerfile"
    context = "."
    platforms = ["linux/amd64"]
    tags = ["docker.io/rockclimber81/cni-plugins:${V}"]
}

target "cni-plugins-arm64" {
    dockerfile = "Dockerfile.arm64"
    platforms = [ "linux/arm64" ]
    tags = ["docker.io/rockclimber81/cni-plugins:${V}"]
}
