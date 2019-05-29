FROM golang:alpine AS build

LABEL "MAINTAINER"="KEINOS https://github.com/KEINOS" \
      "URL"=https://github.com/KEINOS/Dockerfile_of_Hugo-Alpine \
      "ORIGINAL AUTHOR"="Johannes Mitlmeier <dev.jojomi@yahoo.com>"

RUN apk add --no-cache git gcc g++ && \
    git clone --branch stable https://github.com/gohugoio/hugo.git hugo && \
    cd hugo && \
    buildDate=$(TZ=-9 date -Iseconds) && \
    go build -a \
      --ldflags "-extldflags \"-static\" -X github.com/gohugoio/hugo/common/hugo.buildDate=${buildDate}" \
      -o /go/bin/hugo && \
    /go/bin/hugo version

FROM keinos/alpine

COPY --from=build /go/bin/hugo /usr/local/bin/hugo

ENTRYPOINT ["/usr/local/bin/hugo"]
