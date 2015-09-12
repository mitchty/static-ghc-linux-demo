# Minimal example of creating a simple fully static binary with ghc

I'm assuming you don't care about shared libraries at all, and also want to
show a contrived example. This is basically the bare minimum.

## Requirements

- docker
- gnu tar

## To build

```
make
```

Or if your tar is named oddly, say gtar:
```
make TAR=gtar
```

And you'll now have a fully static binary named static-demo in this directory.
