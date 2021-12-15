@ECHO OFF
ECHO Sunshine build!
CALL flutter build web -t lib/main.dart --dart-define=FLUTTER_WEB_USE_SKIA=true --release --no-tree-shake-icons
ECHO Sunshine deploy!
CALL firebase deploy
ECHO Done!