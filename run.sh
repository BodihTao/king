#!/bin/bash
cd "$(dirname "$0")"; pwd
python sina_blog_crawler.py http://blog.sina.com.cn/u/5595594222 asc

if [ $(git status|grep docs/Post_|wc -l) -gt 0 ] 
then 
bash docs/genIndex.sh 幻狮王
date
git status
git add *
git commit  -m "update"
git push

fi
