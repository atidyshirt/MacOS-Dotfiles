: > ~/Library/ApplicationSupport/Übersicht/widgets/simple-bar/lib/styles/Pywal.js;

echo "export const Pywal = {" >> ~/Library/ApplicationSupport/Übersicht/widgets/simple-bar/lib/styles/Pywal.js;

sed -n '2,14p' ~/.cache/wal/colors-speedcrunch.json >> ~/Library/ApplicationSupport/Übersicht/widgets/simple-bar/lib/styles/Pywal.js

echo "};" >> ~/Library/ApplicationSupport/Übersicht/widgets/simple-bar/lib/styles/Pywal.js;
