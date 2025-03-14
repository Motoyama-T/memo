# SSH接続とは
![image](https://github.com/user-attachments/assets/6e6e9636-bec6-4b9e-b8bc-e7e5409379b1)
![image](https://github.com/user-attachments/assets/5b8ddd4e-0fea-4c63-9073-0c2a321b82a6)  
1. 公開鍵と秘密鍵の作成  
2. 生成した公開鍵をSSHサーバーとクライアントへ配置

# 公開鍵と秘密鍵の作成
**生成用**
```powershell
ssh-keygen -t rsa -b 4096
```
**確認用**
```powershell
cat .\id_rsa.pub
```
|オプション|説明|
|:-:|:--|
|-t|方式|
|-b|ビット数|
|-c|コメント|
|-f|ファイル名（秘密鍵の）|

※ビット数について  
　最小サイズは1024bits。指定しなかった場合、デフォルトは3072bits。  
　よく使うのは4096bits。（セキュリティと効率のバランスがベストらしい）
