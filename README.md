# これは何？

MVVM + FluxアーキテクチャをFlutterで書いてみたExample．
ChangeNotifierを使った版，StateNotifierを使った版があります．

# 動かし方

1. [JSON Server](https://github.com/typicode/json-server)をインストールする
2. このディレクトリで `json-server --watch server_resource/db.json`
3. 各サンプルのあるディレクトリで `flutter run` （あるいはエディタで開いてRUN）

# 注意点

ローカルサーバーのアドレスがAndroid Emulatorを想定した `http://10.0.2.2:3000` になってます．
変更したい場合は `utils/constants.dart` にある `API_BASE` の値を変更してください．