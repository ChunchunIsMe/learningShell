#!/bin/bash

# printf 是另一个输出命令
# 语法：
# printf format-string [arguments...]
# format-string: 为格式控制字符串
# arguments: 参数列表

echo "hello shell";
printf "hello shell\n";

printf "%-10s %-8s %4s\n" 姓名 性别 体重KG
printf "%-10s %-8s %4.2f\n" 郭靖 男 66.1234
printf "%-10s %-8s %4.2f\n" 杨过 男 66.1234
printf "%-10s %-8s %4.2f\n" 黄蓉 女 47.1234
