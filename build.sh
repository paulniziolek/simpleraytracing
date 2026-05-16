#!/usr/bin/env bash
set -e

BUILD_DIR="build"
TARGET="simpleraytracing"

usage() {
    cat <<EOF
Usage: ./build.sh [options]
  -b    Build (default if no flags given)
  -r    Run the executable
  -c    Clean the build directory
  -h    Show this help
Flags can combine, e.g. ./build.sh -br
EOF
}

do_clean=0
do_build=0
do_run=0

if [ $# -eq 0 ]; then
    do_build=1
else
    while getopts "bcrh" opt; do
        case $opt in
            b) do_build=1 ;;
            c) do_clean=1 ;;
            r) do_run=1 ;;
            h) usage; exit 0 ;;
            *) usage; exit 1 ;;
        esac
    done
fi

if [ $do_clean -eq 1 ]; then
    rm -rf "$BUILD_DIR"
fi

if [ $do_build -eq 1 ]; then
    cmake -S . -B "$BUILD_DIR"
    cmake --build "$BUILD_DIR"
fi

if [ $do_run -eq 1 ]; then
    "./$BUILD_DIR/$TARGET"
fi
