# 定义变量直接使用=但是不能有空格，使用变量只需要在变量前带一个$就可以了

for file in `ls ./test`;do
  echo $file;
done

for file in $(ls ./test);do
  echo $file;
done
# 使用readonly之后就是只读了，既不能删除也不能修改
myName="LLC";
readonly myName;
echo "hello $myName";
# 使用了unset之后变量就被删除了，就不能使用
dogName="Tian";
unset dogName;
# 定义字符串可以使用''或者""两个的区别是 ""中可以有变量，并且可以出现转义字符
str='good';
str1="\"$str\" game";
echo $str1;
# 拼接字符串
hello="hello";
str2="$hello man";
str3="${hello} man";
str4=$hello' man';
echo $str2 $str3 $str4;
# 获取字符串长度
str5="byebye see you later";
length=${#str5}
echo "str5 is:$str5"
echo "str5 length is:$length"
# 提取字符串
str6="0123456789";
cut=${str6:1:9};
echo "str6 is:$str6"
echo "str6 1-9 is:\"$cut\"";

# 数组
# bash支持一位数组，并且没有限定数组的大小，下标从0开始标号
# 定义数组 用括号来表示数组，用空格符号符号分割开
arr1=(1 2 3 4);
# 还可以单独定义数组的各个分量
arr1[4]=$str6;
# 读取数组
val=${arr1[4]};
echo "arr1[4]:$val";
# 可以通过 @ 符号来获取数组中的所有元素
echo ${arr1[@]};
# 获取数组的长度
length=${#arr1[@]}
length1=${#arr1[*]}
echo $length $length1;
