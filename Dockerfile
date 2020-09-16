FROM golang:1.15.2 AS build

# Install claat tool
# https://github.com/googlecodelabs/tools/blob/master/claat/README.md#install
RUN go get github.com/googlecodelabs/tools/claat

FROM scratch

WORKDIR /app
COPY --from=build /go/bin/claat /claat

EXPOSE 9090
VOLUME /app

ENTRYPOINT ["/claat"]
