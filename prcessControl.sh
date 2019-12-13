#!/bin/bash

# if/elif/else
# 条件控制语句中结尾必须是 fi if或者elif后要带 then else 不用
# 例子
val=1;
val1=1;
val2=2;

if [ $val == $val1 ]
then
  printf "%s\n" "val等于val1"
fi

if [ $val == $val2 ]
then
  printf "%s\n" "val等于val2"
else
  printf "%s\n" "val不等于val2"
fi

if [ $val == $val2 ]
then
  printf "%s\n" "val等于val2"
elif [ $val -gt $val2 ]
then
  printf "%s\n" "val大于val2"
else
  printf "%s\n" "val小于val2"
fi

# for
# 语法:
# for loop in 1 2 3 4 do command done
for i in 1 2 3 4 5
do
 echo "$i";
done

for str in 'this is my zone'
do
  echo -e "$str \n"
done
# while
# 语法
# while condition do command done
# 例子
int=1;

while (( $int <= 5 ))
do
  echo "$int";
  let "int++"
done

echo "按下 <CTRL-D> 退出"
echo -n "请输入"
while read FILM
do
  echo "$FILM";
done

# 无限循环
# while : do command done
# while true do command done
# for (( ; ; ))

# until 
# until 是循环执行一系列命令直到条件为 true 时停止
# 语法
# until condition do command done
int1=1;
until (( $int1 >= 10 ))
do
  echo "$int1";
  let "int1++";
done

# case
# 需要 esac 来结束 case 每个 case 分支用右圆括号，两个分号代表break。
# 取值将检测匹配的每一个模式。一旦模式匹配，则只需匹配模式相应命令后不再继续其他模式 default 用 *) 来匹配

echo -e "你输入的数字为: \c";
read num;
case $num in
  1) echo '你选择了1'
  ;;
  2) echo '你选择了2'
  ;;
  3) echo '你选择了3'
  ;;
  4) echo '你选择了4'
  ;;
  *) echo '你没选择1-4之间的数字'
  ;;
esac

# shell 中也可以使用 continue 和 break 这两个和其他语言的没什么区别就不展开讲了