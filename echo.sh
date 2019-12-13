#!/bin/bash

# 比较简单的用法之前都有介绍到这里主要说明下没有用到的用法
# -e 开启转义
echo -e "please write your name: \c"; # -e 开启转义 \c 不换行
# 显示变量
read name;
echo "hello $name";
# 显示换行
echo -e "i will write 'hello' into <text> file \n";
# 显示结果定向至文件
echo "hello" > './text'

# 显示命令执行结果（使用反引号）

echo -e "now time is: \c"
echo `date`