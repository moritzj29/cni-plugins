FROM alpine
ARG version
ADD https://github.com/containernetworking/plugins/releases/download/${version}/cni-plugins-linux-amd64-${version}.tgz /
RUN mkdir /plugins && \
      tar -zxvf /cni-plugins-linux-amd64-${version}.tgz -C /plugins && \
      rm /cni-plugins-linux-amd64-${version}.tgz
CMD cp /plugins/* /opt/cni/bin
