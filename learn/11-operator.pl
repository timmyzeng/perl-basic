# !/usr/bin/perl

# # 比较运算符
# $a = 10;
# $b = 20;

# # 左边大返回1，相等返回0，右边大返回-1
# $c = $a <=> $b;
# print "$c\n";
#
# # lt gt le ge
# # eq ne cmp
# $a = "abc";
# $b = "xyz";

# # # 左边大返回1，相等返回0，右边大返回-1
# $c = $a cmp $b;
# print "$c\n";
#
# 逻辑运算符
# and &&
# or ||
# not
#
# # 引号运算符
# # q{}为字符串加上单引号
# # qq{}为字符串加上双引号
# # qx{}为字符串加上反引号
# $a = 10;
# $b = q{a = $a};
# print "$b\n";

# $b = qq{a = $a};
# print "$b\n";

# $t = qx{date};
# print "$t\n";
#
# # 其他运算符
# # . 字符串连接
# # x 字符串重复
# # .. 连续字符范围
# # -> 指定类方法
# $a = "run";
# $b = "oob";

# $c = $a . $b;
# print "$c\n";

# $c = "-" x 3;
# print "$c\n";

# @c = (2..5);
# print "@c\n";

# $a = 10;
# print "a = $a\n";
# $c = $a ++;
# print "$c\n";

# $c = $a --;
# print "$c\n";

# # 优先级 http://www.runoob.com/perl/perl-operators.html
