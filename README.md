# これは何？

[MVVM + Flux？それ，Flutterなら簡単にできますよ](https://scrapbox.io/kurogoma4d-lab/MVVM_+_Flux%EF%BC%9F%E3%81%9D%E3%82%8C%EF%BC%8CFlutter%E3%81%AA%E3%82%89%E7%B0%A1%E5%8D%98%E3%81%AB%E3%81%A7%E3%81%8D%E3%81%BE%E3%81%99%E3%82%88)

MVVM + FluxアーキテクチャをFlutterで書いてみたExample．
ChangeNotifierを使った版，StateNotifierを使った版があります．

# 動かし方

1. [JSON Server](https://github.com/typicode/json-server)をインストールする
2. このディレクトリで `json-server --watch server_resource/db.json`
3. 各サンプルのあるディレクトリで `flutter run` （あるいはエディタで開いてRUN）

# 注意点

ローカルサーバーのアドレスがAndroid Emulatorを想定した `http://10.0.2.2:3000` になってます．
変更したい場合は `utils/constants.dart` にある `API_BASE` の値を変更してください．