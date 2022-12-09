#!/usr/bin/env bash
#依赖安装，运行一次就好
#0 8 5 5 * jd_indeps.sh
#new Env('依赖安装');
#

echo -e "第一次运行评价出错才运行此程序，如果没有问题请勿运行，以免弄出问题!!!\n"
echo -e "开始安装............\n"

apk add --no-cache libxml2-dev libxslt-dev
pip install -U --force-reinstall pip
pip3 install -i https://pypi.tuna.tsinghua.edu.cn/simple/ jieba
pip3 install -i https://pypi.tuna.tsinghua.edu.cn/simple/ zhon 
pip3 install -i https://pypi.tuna.tsinghua.edu.cn/simple/ requests  
pip3 install -i https://pypi.tuna.tsinghua.edu.cn/simple/ chardet==4.0.0   

echo -e "\n安装 Free_proxy_pool 依赖..."
cd ./Free_proxy_pool
pip3 install -r requirements.txt

echo -e "\n所需依赖安装完成，请检查有没有报错，可尝试再次运行"
