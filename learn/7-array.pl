# !/usr/bin/perl

# # 创建和访问数组
# @array = (1, 2, 'Hello');
# @array = qw/this is array/;

# print "$array[0]\n";
# print "$array[1]\n";
# print "$array[2]\n";
# print "$array[-1]\n";
# print "$array[-2]\n";
# print "$array[-3]\n";

# # 数组序列号
# @var_10 = (1..10);
# @var_ab = (a..z);

# print "@var_10\n";
# print "@var_ab\n";

# # 数组大小
# @array = (1, 2, 3);
# $array[50] = 4;

# $size = @array;
# $max_index = $#array;

# print "数组大小: $size\n";
# print "最大索引: $max_index\n";
#

# # 数组元素操作
# @sites = ("google", "runoob", "taobao");
# print "1. \@sites = @sites\n";

# push(@sites, "baidu");
# print "2. \@sites = @sites\n";

# unshift(@sites, "weibo");
# print "3. \@sites = @sites\n";

# pop(@sites);
# print "4. \@sites = @sites\n";

# shift(@sites);
# print "5. \@sites = @sites\n";
#
# # 数组切割
# @sites = qw/google taobao runoob weibo qq facebook/;

# @sites2 = @sites[3, 4, 5];
# print "@sites2\n";

# @sites2 = @sites[3..5];
# print "@sites2\n";
#
# # 替换数组元素
# @nums = (1..10);
# print "替换前-@nums\n";

# splice(@nums, 4, 3, 59..61);
# print "替换后-@nums\n";
#
# # 转换字符串为数组, 切分函数
# $var_test = "runoob";
# $var_string = "www-baidu-com";
# $var_names = "google, taobao, runoob";

# @test = split('', $var_test);
# @string = split('-', $var_string);
# @names = split(',', $var_names);

# print "$test[3]\n";
# print "$string[2]\n";
# print "$names[2]\n";
#
# # 将数组组合成字符串
# $var_string = "www-baidu-com";
# $var_names = "google,taobao,runoob";

# @string = split('-', $var_string);
# @names = split(',', $var_names);

# $string1 = join(',', @string);
# $string2 = join('-', @names);

# print "$string1\n";
# print "$string2\n";
#
# # 排序数组
# @sites = qw(google taobao runoob facebook);
# print "排序前：@sites\n";

# @sites = sort(@sites);
# print "排序后：@sites\n";
#
# # 特殊变量，已弃用
# @sites = qw(google taobao runoob facebook);
# print "网站：@sites\n";

# $[ = 1;
# print "$sites[1]\n";
#
# # 合并数组
# @numbers = (1,3,(4,5,6));
# print "numbers = @numbers\n";

# @odd = (1, 3, 5);
# @even = (2, 4, 6);
# @numbers = (@odd, @even);

# print "numbers = @numbers\n";

# # 选择元素
# $var = (5,4,3,2,1)[4];
# print "var = $var\n";

# @list = (5,4,3,2,1)[1..3];
# print "list = @list\n";
