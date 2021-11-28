#!/bin/zsh

fvm flutter build web -t lib/main.dart --dart-define=FLUTTER_WEB_USE_SKIA=true --release --no-tree-shake-icons

firebase deploy