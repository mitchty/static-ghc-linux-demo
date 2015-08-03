from mitchty/alpine-ghc:latest

COPY . /tmp/
RUN cabal build 

