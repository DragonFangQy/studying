#!/bin/bash


git config http.proxy  http://10.79.20.114:8081
git config https.proxy http://10.79.20.114:8081


git push https://gitee.com/fangqingyou/studying.git


git config --unset http.proxy
git config --unset https.proxy