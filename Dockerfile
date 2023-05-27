FROM alpine
ARG version
ARG TARGETARCH
ADD https://github.com/containernetworking/plugins/releases/download/${version}/cni-plugins-linux-${TARGETARCH}-${version}.tgz /
RUN mkdir /plugins && \
      tar -zxvf /cni-plugins-linux-${TARGETARCH}-${version}.tgz -C /plugins && \
      rm /cni-plugins-linux-${TARGETARCH}-${version}.tgz
CMD cp /plugins/* /opt/cni/bin
