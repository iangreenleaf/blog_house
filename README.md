# House Blog! #

Find it at [https://house.youngram.net].

Runs on Jekyll and hacks.

## One-time setup ##

```
./bin/setup
```

## CLI ##

### Compose commands ###

    jekyll draft NAME
    jekyll post NAME
    jekyll publish NAME
    jekyll unpublish NAME

### Local preview ###

    make serve

### Do it live! ###

    make publish

### Installing rmagick on Arch ###

    pacman -S libmagick6
    export PKG_CONFIG_PATH="/usr/lib/imagemagick6/pkgconfig"
    bundle

## Style Guide ##

### Post metadata ###

`project_start`: Start date of the project, as YYYY-MM-DD
`project_end`: End date of the project. Omit if single date.
