# advenced-deep-learning-with-pytorch
「つくりながら学ぶ！PyTorchによる発展ディープラーニング」用の勉強用コード

# コードをバックグラウンドで実行する方法

SSHで接続が途切れても、コードが実行されるようにするには以下のようにする。

まず、tmuxでウィンドウに入る。これで、SSHが途切れてもコマンドが実行され続ける。

```bash
tmux
```

次に、notebookのあるフォルダに移動し、以下のようにコマンドを実行。
```bash
cd ./3-semantic-segmentation
jupyter nbconvert --debug --to notebook --execute 3-pspnet.ipynb
```

ちゃんと実行されているか不安であれば、以下でGPUが使用されているかなどを確認。

```bash
watch nvidia-smi
```
