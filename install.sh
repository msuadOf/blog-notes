npm config set registry http://mirrors.cloud.tencent.com/npm/

npm i hexo-cli -g

HEXO_DIR = ./hexo

hexo init ${HEXO_DIR}/
npm install --prefix ${HEXO_DIR}/

echo -e "deploy:\n\
  type: git\n\
  repo: git@github.com:msuadOf/msuadof.github.io.git\n\
  branch: main" >> ${HEXO_DIR}/_config.yml

npm install hexo-abbrlink --save
npm i -S hexo-prism-plugin
npm install hexo-generator-json-content --save
npm i --save hexo-wordcount
npm install hexo-filter-github-emojis --save
