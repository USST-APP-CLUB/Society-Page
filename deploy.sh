#!/usr/bin/env sh

# 确保脚本抛出遇到的错误
set -e

# 生成静态文件
# npm run build

# 进入生成的文件夹
cd docs/.vuepress/dist


# git init 

# 下面这行是官网没有的，如果是多人开发项目，务必执行此命令
# git pull https://github.com/ajn404/Society-Page.git main 
git add -A
git commit -m 'deploy'
git push -f https://github.com/ajn404/Society-Page.git main:gh-pages

cd -
# deploy to github pages
# echo 'b.xugaoyi.com' > CNAME



# if [ -z "$GITHUB_TOKEN" ]; then
#   msg='deploy'
#   githubUrl=git@github.com:ajn404/Society-Page.git
# else
#   msg='来自github actions的自动部署'
#   githubUrl=https://ajn404:${GITHUB_TOKEN}@github.com/ajn404/Society-Page.git
#   git config --global user.name "ajn404"
#   git config --global user.email "huiyuening00@gmail.com"
# fi
# git init
# git add -A
# git commit -m "${msg}"
# git push -f $githubUrl main:gh-pages # 推送到github gh-pages分支

# # deploy to coding pages
# # echo 'www.xugaoyi.com\nxugaoyi.com' > CNAME  # 自定义域名
# # echo 'google.com, pub-7828333725993554, DIRECT, f08c47fec0942fa0' > ads.txt # 谷歌广告相关文件

# # if [ -z "$CODING_TOKEN" ]; then  # -z 字符串 长度为0则为true；$CODING_TOKEN来自于github仓库`Settings/Secrets`设置的私密环境变量
# #   codingUrl=git@e.coding.net:xgy/xgy.git
# # else
# #   codingUrl=https://HmuzsGrGQX:${CODING_TOKEN}@e.coding.net/xgy/xgy.git
# # fi
# # git add -A
# # git commit -m "${msg}"
# # git push -f $codingUrl master # 推送到coding

# cd -
# rm -rf docs/.vuepress/dist
