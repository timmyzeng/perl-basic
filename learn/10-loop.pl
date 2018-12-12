# !/usr/bin/perl

# # while and until
# $a = 5;

# until($a > 10){
#     print "$a\n";
#     $a = $a + 1;
# }
#
# for
# 
# # foreach 遍历集合
# @list = (2, 1, 4, 42);
# foreach $a (@list){
#     print "$a\n";
# }
#
# # do ... while
# $a = 1;
# do{
#     print "$a\n";
#     $a = $a + 1;
# }while($a < 5);
#
# next 等同于c中的continue
# last 等同于c中的break
#
# # next和continue
# $a = 10;
# while ($a < 14){
#     if ($a == 12){
#         $a = $a + 1;
#         next;
#     }
#     print "$a\n";
#     $a = $a + 1;
# }continue{
#     print "this continue\n";
# }
#
# # last和continue
# $a = 10;
# while ($a < 14){
#     if ($a == 12){
#         $a = $a + 1;
#         last;
#     }
#     print "$a\n";
#     $a = $a + 1;
# }continue{
#     print "this continue\n";
# }
#
# continue用在while和foreach之中，
# 用于执行完while和foreach循环体，
# 判断循环条件之前.
#
# # redo跳过continue，
# # 如果redo后面跟有标签就跳向标签，
# # 如果没有就返回循环开头
# $a = 10;
# while ($a < 14){
#     if ($a == 12){
#         $a = $a + 1;
#         redo;
#     }
#     print "$a\n";
# }continue{
#     $a = $a + 1;
# }
#
# goto label\goto expr\goto &name
