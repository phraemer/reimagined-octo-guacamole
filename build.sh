#!/bin/bash

mkdir release

# On macOS generate Xcode projects instead of unix makefile.
CMAKE_GENERATOR=()
if [[ "$OSTYPE" == "darwin"* ]]; then
    CMAKE_GENERATOR+=(-G Xcode)
fi

cmake \
  -S "." \
  -B "./release/"  \
  -DUSE_CCACHE=YES \
  "${CMAKE_GENERATOR[@]}"

cmake --build "./release/" --config Release
