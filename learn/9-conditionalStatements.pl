# !/usr/bin/perl

# false: 数字0、字符串'0'、""、空list()、undef
# 其他为true

# # if...elsif...else
# $a = 100;
# if ($a == 20){
#     print "a = 20\n";
# }
# elsif($a == 30){
#     print "a = 30\n";
# }
# else{
#     print "a = 100\n";
# }
#
# # unless条件为false进入，跟if相反
# $a = 20;
# unless($a < 20){
#     print "a >= 20\n";
# }
# print "a = $a\n";
#
# # 使用Switch
# use Switch;

# $var = 10;
# @array = (10, 20, 30);
# %hash = ('key1'=>10, 'key2'=>20);

# switch($var){
#     case 10 {print"数字10\n"}
#     case "a" {print"字符串a\n"}
#     else {print "没有匹配\n"}
# }
#

# # switch中next的使用

# use Switch;

# $var = 10;
# @array = (10, 20, 30);
# %hash = ('key1'=>10, 'key2'=>20);

# switch($var){
#     case 10 {print"数字10\n"; next;}
#     case "a" {print"字符串a\n"}
#     case [1..10, 42] {print "数字在列表中\n"}
#     else {print "没有匹配\n"}
# }
#
#
