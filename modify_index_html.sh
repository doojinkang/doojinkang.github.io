LF=$(printf '\\\012_')
LF=${LF%_}
GA_TAG="<title>Stretch3\(ストレッチスリー\)</title>${LF}\
    <meta name=\"description\" content=\"Stretch3\(ストレッチスリー\)は自作の拡張機能を使えるように改造したScratch\(スクラッチ\)です。音声認識\(スピーチ トゥー スクラッチ\)、ポーズの認識\(ポーズネット トゥー スクラッチ\)、画像や音声を学習させることができる機械学習\(エムエル トゥー スクラッチ\)、ChatGPT\(チャットジーピーティー トゥー スクラッチ\)などが使えるいろいろな拡張機能があります。\" />${LF}\
${LF}\"
mv build/index.html build/index.html_orig
sed -e "s|<title>Scratch 3.0 GUI</title>|${GA_TAG}|g" build/index.html_orig > build/index.html
