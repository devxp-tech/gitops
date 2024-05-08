FROM golang:1.22-alpine@sha256:2a882244fb51835ebbd8313bffee83775b0c076aaf56b497b43d8a4c72db65e1
# INSTALL kubeseal cli
RUN go install github.com/bitnami-labs/sealed-secrets/cmd/kubeseal@main
RUN apk update && apk upgrade && apk add curl make gcc bash git openssl openssh
# INSTALL kubectl cli
RUN curl -LO "https://dl.k8s.io/release/$(curl -L -s https://dl.k8s.io/release/stable.txt)/bin/linux/amd64/kubectl" \
  && install -o root -g root -m 0755 kubectl /usr/local/bin/kubectl
# INSTALL HELM cli
RUN curl https://raw.githubusercontent.com/helm/helm/main/scripts/get-helm-3 | bash
# INSTALL argocd-autopilot cli
RUN VERSION=$(curl --silent "https://api.github.com/repos/argoproj-labs/argocd-autopilot/releases/latest" | grep '"tag_name"' | sed -E 's/.*"([^"]+)".*/\1/') \
  &&  curl -L --output - https://github.com/argoproj-labs/argocd-autopilot/releases/download/$VERSION/argocd-autopilot-linux-amd64.tar.gz | tar zx \
  && mv ./argocd-autopilot-* /usr/local/bin/argocd-autopilot
# INSTALL argocd cli
RUN curl -sSL -o /usr/local/bin/argocd https://github.com/argoproj/argo-cd/releases/latest/download/argocd-linux-amd64 \
  && chmod +x /usr/local/bin/argocd

HEALTHCHECK NONE

# Set the non-root user as the default user
USER nonroot
