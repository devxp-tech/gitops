FROM golang:1.15-alpine3.12 as builder
ENV LANG en_US.UTF-8
ENV LC_ALL=C
ENV LANGUAGE en_US.UTF-8
WORKDIR /workspace
COPY . .
RUN go mod download
# Enforce to use UTF8 char code
RUN CGO_ENABLED=0 GOOS=linux GOARCH=amd64 GO111MODULE=on go build -o teste-argo2 ./cmd/teste-argo2/**.go

# Use distroless as minimal base image to package the teste-argo2 binary
# Refer to https://github.com/GoogleContainerTools/distroless for more details
FROM gcr.io/distroless/static:nonroot as final
WORKDIR /
# Enforce to use UTF8 char code
ENV LANG en_US.UTF-8
ENV LC_ALL=C
ENV LANGUAGE en_US.UTF-8
COPY --from=builder /workspace/teste-argo2 .
USER nonroot:nonroot

ENTRYPOINT ["/teste-argo2"]
