# GCP

## Cloud RUN
1. 至 GCP Console 開啟 Cloud Build API
2. 下載 Google Cloud SDK [gcloud](https://cloud.google.com/sdk/docs/install)
3. 解壓縮後並安裝
```bash
## 安裝 Google Cloud SDK
./google-cloud-sdk/install.sh

## 初始化SDK
./google-cloud-sdk/bin/gcloud init
```
4. 部署到Cloud Run
https://cloud.google.com/run/docs/quickstarts/build-and-deploy/php?hl=zh-tw
```bash
./google-cloud-sdk/bin/gcloud run deploy
```
如果提示開啟API，回复y開啟。

當系統提示您輸入源代碼位置時，按 Enter 以部署當前文件夾。

當系統提示您輸入服務名稱時，按 Enter 接受默認名稱helloworld。

如果系統提示您啟用 Artifact Registry API，請按“y”進行響應。

當系統提示您輸入地區時：選擇 您選擇的地區，例如us-central1。

系統將提示您允許未經身份驗證的調用：響應y。

然後稍等片刻，直到部署完成。成功後，命令行將顯示服務 URL。
