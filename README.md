# cni-plugins

This is a fork of https://github.com/NAVRockClimber/cni-plugins/ and https://github.com/ibrokethecloud/cni-plugins/ providing automated build of container images upon new upstream release of cni-plugins binaries.

Container image for packaging the upstream containernetworking/plugin binaries.

This can be used as an init container for deploying the binaries before other meta-plugins like multus are deployed.

Image can be download from `ghcr.io/moritzj29/cni-plugins`

Example init-container for kubernetes deployments:
```
...
    initContainers:
        - name: install-macvlan-binary
          image: ghcr.io/moritzj29/cni-plugins:latest
          command:
            - "cp"
            - "/plugins/macvlan"
            - "/host/opt/cni/bin"
          resources:
            requests:
              cpu: "10m"
              memory: "15Mi"
          securityContext:
            # required for bidirectional mount propagation
            privileged: true
          volumeMounts:
            - name: cnibin
              mountPath: /host/opt/cni/bin
              mountPropagation: Bidirectional
```