#!/usr/bin/env bash
#
# This script is used to generate the HTML version of the file README.adoc
#   and also to publish it to GitHub Pages.
#
# Requirements:
#   1) Bash.
#   2) Docker.
#   3) docker-asciidoctor-builder.
#      (from https://gist.github.com/paulojeronimo/95977442a96c0c6571064d10c997d3f2)
#
# Examples of use:
#
#   1) Generates the 'build/index.html' file from README.adoc:
#   $ ./README.build.sh
#
#   2) Publishes the 'build' dir to GitHub Pages:
#   $ ./README.build.sh gh-pages

docker-asciidoctor-builder "$@"
