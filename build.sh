#! /bin/bash

# Hello! Let's start building our Plug-In :)
printf -- "------------------------------\n"
printf -- "      Starting Build! :)\n"
printf -- "------------------------------\n\n"

# Set our working directory, then display it.
DIR="$(dirname "$(realpath "$0")")"/
printf -- " - Build Directory: %s\n\n" "$DIR"

# Now let's start the build process!
# First let's clean up any old builds.
find "$DIR/Builds" ! -name '.' ! -name '..' -exec rm -rf {} +

# Next let's generate a new one, then build it.
cmake -S . -B Builds/Debug
cmake --build Builds/Debug