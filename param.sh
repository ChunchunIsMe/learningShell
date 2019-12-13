#!/bin/bash
# 在执行脚本时，我们可以向脚本传递参数，脚本内获取参数的格式为,$n $0为执行的文件名 $1为第一个参数 $2为第二个参数 以此类推
# 参数传递在运行脚本之后，用空格隔开，如果参数带空格则用引号包起来
# 以 ./param.sh 1 2 'hello world' 运行该文件
echo "Shell 传递参数实例"
echo "执行的文件名为: $0"
echo "第一个参数为: $1"
echo "第二个参数为: $2"
echo "第三个参数为: $3"
# 另外还有几个特殊字符用来处理参数
# $# 传递到脚本的参数个数
# $* 以单个字符'$1 $2 $3...' 的形式输出参数 
# $$ 脚本运行的当前进程id
# $! 后台运行的最后一个进程的id
# $@ 以多个字符'$1' '$2' '$3'... 的形式输出参数
# $- 显示Shell使用的当前选项，与set命令功能相同
# $? 显示最后命令的退出状态。0表示没有错误，其他表示有错误

echo "参数个数: $#";
echo "脚本运行当前进程id: $$";
echo "脚本运行最后一个进程id: $!";
echo "shell使用的当前选项: $-";
echo "显示最后命令的退出状态: $?"

for i in "$*";do
  echo "循环$""*: $i"
done

for i in "$@";do
  echo "循环$""@: $i"
done

  