FROM alpine:latest AS BASE
RUN apk update && apk upgrade
RUN apk add texmf-dist texlive