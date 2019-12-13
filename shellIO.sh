#!/bin/bash

# shell 输入/输出重定向
# 命令
# command > file 将输出重定向到file
# command < file 将输入重定向到file
# command >> file 将输出以追加的方式重定向到file
# n > file 将文件描述符为n的文件重定向到file
# n >> file 将文件描述符为n的文件以追加的方式重定向到file
# n >& m 将输出文件 m 和 n 合并
# n <& m 将输入文件 m 和 n 合并
# << tag 将开始标记 tag 和结束标记 tag 之间的内容作为输入

# 这个输出重定向会覆盖文件
who > './text'
echo "给老子爬" > './text'
# 使用 >> 就不会覆盖文件
echo "傻逼东西" >> './text' 

read file < './text';
echo "$file"
