# ベースイメージを指定
FROM node:22

# 作業ディレクトリを設定
WORKDIR /usr/src/app

# package.jsonとpackage-lock.jsonをコピー
COPY package*.json ./

# 依存関係をインストール
RUN npm install

# アプリケーションのソースコードをコピー
COPY app.js .

# アプリケーションを実行
CMD [ "node", "app.js" ]