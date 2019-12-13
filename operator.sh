#!/bin/bash

# 原生 bash 不支持简单的数学运算，但是可以通过其他命令来实现，例如 awk 和 expr, expr 最常用。 expr 是一款表达式计算工具，使用他能完成表达式的求值操作
val=`expr 2 + 2`;
echo "两数之和为: $val";
# 这里要注意的是val的计算用的是`反引号
# 并且需要注意的是表达式和运算符之间要有空格，比如 2+2 是不对的，必须写成 2 + 2

# 算数运算符
# +(加法) -(减法) *(乘法) /(除法) %(求余) =(赋值) ==(相等) !=(不等) 还是比较简单
# 这里需要注意的是条件表达式要放在方括号中，并且要有空格，比如 [ $a == $b ]
# 还有需要注意的就是使用 * 的时候前面要带转义字符，比如 2 \* 2
a=2;
b=2;
c=3;
val=`expr 2 + 2`;
echo "2+2=$val";
val=`expr 2 - 2`;
echo "2-2=$val";
val=`expr 2 \* 2`;
echo "2*2=$val";
val=`expr 2 / 2`;
echo "2/2=$val";
val=`expr 2 % 2`;
echo "2%2=$val";

if [ $a == $b ]
then
  echo "a等于b"
fi

if [ $a != $c ]
then
  echo "a不等于c"
fi

# 关系运算符
# 关系运算符只支持数字，不支持字符串，除非字符串是数字
# -eq 检测两个数是否相等
# -ne 检测两个数是否不相等
# -gt >
# -lt <
# -ge >=
# -le <=

if [ $a -eq $b ]
then
  echo "a等于b"
fi

if [ $a -ne $c ]
then
  echo "a不等于c"
fi

if [ $c -gt $a ]
then
  echo "c大于a"
fi

if [ $a -lt $c ]
then
  echo "a小于c"
fi

if [ $a -ge $b ]
then
  echo "a大于等于b"
fi

if [ $a -le $b ]
then
  echo "a小等于b"
fi
# 布尔运算符
# ! 非运算
# -o 或运算
# -a 与运算

if [ $a -eq $b -a $a != $c ]
then 
  echo "a等于b且a不等于c"
fi

if [ $a == $b -o $a == $c ]
then
  echo "a等于b或者a等于c"
fi

# 逻辑运算符
# 这里要注意如果使用逻辑运算符要写成[[]]
# &&
# ||
if [[ $a -eq $b && $a != $c ]]
then 
  echo "a等于b且a不等于c"
fi

if [[ $a == $b || $a == $c ]]
then
  echo "a等于b或者a等于c"
fi

# 字符串运算符
# = 检测两个字符串是否相等
# != 是否不等 不知道为什么用不了，比较sb
# -z 检测长度是否为0 是则返回 true
# -n 检测长度是否为0 不是则返回 true
# $ 检测字符串是否为空 不为空则返回 true 
str='';
str1='abc';
str2='abc';

if [ $str1 = $str2 ]
then
  echo "str1等于str2"
fi

# if [ $str != $str1 ]
# then
#    echo "str 不等于 str1"
# fi

if [ -z $str ]
then
  echo "str长度为0"
fi

if [ -n $str1 ]
then
  echo "str1长度不为0"
fi

if [ $str1 ]
then
  echo "str1不是空字符串"
fi

# 文件测试运算符
# -b file 检测文件是否是块文件设备
# -c file 检测是否是字符文件设备
# -d file 检测是否是目录
# -f file 检测是否是普通文件(不是目录且不是文件设备)
# -g file 检测文件是否设置了 SGID 位
# -k file 检测文件是否设置了粘着位
# -p file 检测文件是否有名管道
# -u file 检测文件是否设置了 SUID 位
# -r file 检测文件是否可读
# -w file 检测文件是否可写
# -x file 检测文件是否可执行
# -s file 检测文件是否为空 不为空返回true 只有这个是否返回true
# -e file 检测文件是否存在

file='./test/test.sh';
mulu='./test';

if [ -d $mulu ]
then
  echo "$mulu 是目录"
fi

if [ -f $file ]
then
  echo "$file 是普通文件"
fi

if [ -r $file ]
then
  echo "$file 是可读文件"
fi

if [ -w $file ]
then
  echo "$file 是可写文件"
fi

if [ -x $file ]
then
  echo "$file 是可执行文件"
fi

if [ -s $file ]
then
  echo "$file 文件不为空"
else
  echo "$file 文件为空";
fi

if [ -e $file ]
then
   echo "$file 文件存在"
fi