### 최초 등록
D:
cd FrontendCode\Playground
git init
git add *
git commit -m "commit"

git remote add origin https://github.com/uijong0729/vuejs_nodejs.git
git push -u origin master


### 이후 커밋
D:
cd FrontendCode\Playground
git add *
git commit -m "기초 문법 끝"
git push -u origin master


### install VUE CLI
npm -v 
npm install -g @vue/cli @vue/cli-service-global

### path
%USERPROFILE%\AppData\Roaming\npm\node_modules


### vue
vue create '프로젝트 폴더 위치'
vue create 'D:\FrontendCode\Playground'

vue create vue-cli
cd vue-cli
npm run serve
