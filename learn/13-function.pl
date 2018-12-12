# !/usr/bin/perl

# # 函数定义
# sub Hello{
#     print "Hello, World!\n";
# }

# # 函数调用
# Hello();
#
# # 传递参数
# # 使用超级奇怪的数组，数组名为"_"。
# # 第一个参数是$_[0], 第二个参数是$_[1]
# # 参数传入使用的是引用的方式
# sub Average{
#     $n = scalar(@_);
#     $sum = 0;

#     foreach $item (@_){
#         $sum += $item;
#     }
#     $average = $sum / $n;
#     print "传入的参数：@_\n";
#     print "第一个参数：$_[0]\n";
#     print "平均值：$average\n";
# }

# Average(10, 20, 30);
#
# sub PrintList{
#     # my是一个关键字……
#     my @list = @_;
#     print "list : @list\n";
# }

# $a = 10;
# @b = (1, 2, 3, 4);

# PrintList($a, @b);
#
# # hash被复制到@_中，展开为键/值组合的列表
# sub PrintHash{
#     my %hash = @_;

#     foreach my $key (keys %hash){
#         my $value = $hash{$key};
#         print "$key : $value\n";
#     }
# }

# %hash = ('name'=>'runoob', 'age'=>'3');

# PrintHash(%hash);
#
# # 返回值
# # 可以使用return
# # 不使用return的话，最后一行语句作为返回值
# sub add_a_b{
#     # no return
#     $_[0] + $_[1];

#     # use return
#     # return $_[0] + $_[1]
# }
# print add_a_b(1, 3) . "\n";
#
# # 私有变量my
# $string = "hello, world";

# sub PrintHello{
#     my $string;
#     $string = "hello, runoob";
#     print "in func: $string\n";
# }

# PrintHello();
# print "out func: $string\n";
#
# # 临时赋值 local
# # local修饰的变量存在于函数及其调用函数中
# # 不存在于主程序中
# $string = "hello, world";

# sub PrintRunoob{
#     local $string;
#     $string = "hello, runoob";
#     PrintMe();
#     print "in PrintRunoob: $string\n";
# }

# sub PrintMe{
#     print "in PrintMe: $string\n";
# }

# sub PrintHello{
#     print "in PrintHello: $string\n";
# }

# PrintRunoob();
# PrintHello();
# print "out func: $string\n";
#
# # 静态变量 state
# # 效果类似于C中的static
# # 局部变量持久化，作用域不变，生命周期变长
# use feature 'state';

# sub PrintCount{
#     state $count = 0;

#     print "counter : $count\n";
#     $count ++;
# }

# for (1..5){
#     PrintCount();
# }
#
# # 函数调用上下文
# # examples:
# # localtime for scalar
# my $datestring = localtime( time );
# print $datestring . "\n";

# # localtime for list
# ($sec, $min, $hour, $mday, $mon, $year, $wday, $yday, $isdst) = localtime(time);
# printf("%d-%d-%d %d:%d:%d\n", $year + 1900, $mon + 1, $mday, $hour, $min, $sec);
