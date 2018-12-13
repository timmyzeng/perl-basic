# !/usr/bin/perl

=pod 特殊变量
# 通常以$、@、%作为前缀
# 特殊变量通常也有英文名，需要在程序添加use English;
# 例如：$! == $OS_ERROR
=cut

=pod $_
# $_: 表示默认输入和模式匹配内容

foreach ('google', 'runoob', 'taobao'){
    print $_, "\n";
}

# 在迭代循环中，当前循环的字符串会放在$_中，
# 然后通过print输出，print不指定输出变量默认使用$_。
#
# 默认使用$_：
# 1 各种单目函数，包括像 ord() 和 int() 这样的函数以及
#   除"-t"以外所有的文件测试操作("-f"，"-d")，"-t"默认操作STDIN。
# 2 各种列表函数，例如 print() 和 unlink()。
# 3 没有使用 "=~" 运算符时的模式匹配操作 "m//"、"s///" 和"tr///"。
# 4 在没有给出其他变量时是 "foreach" 循环的默认迭代变量。
# 5 grep() 和 map() 函数的隐含迭代变量。
# 6 当 "while" 仅有唯一条件，且该条件是对 ""操作的结果进行测试时，
#   $_ 就是存放输入记录的默认位置。
#   除了"while" 测试条件之外不会发生这种情况。
#   (助记：下划线在特定操作中是可以省略的。) 
=cut

# $!: 表示errno的值
# 更多见：http://www.runoob.com/perl/perl-special-variables.html
