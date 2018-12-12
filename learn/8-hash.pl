# !/usr/bin/perl
#
# 创建哈希
# %data = ('google', 'google.com', 'runoob', 'runoob.com', 'taobao', 'taobao.com');

# print "\$data{'google'} = $data{'google'}\n";
# print "\$data{'runoob'} = $data{'runoob'}\n";
# print "\$data{'taobao'} = $data{'taobao'}\n";
#
# $data{'google'} = 'google.com';
# $data{'runoob'} = 'runoob.com';
# $data{'taobao'} = 'taobao.com';

# %dataa = ('google'=>'google.com', 'runoob'=>'runoob.com', 'taobao'=>'taobao.com');
# $val = $dataa{google};

# %dataaa = (-google=>'google.com', -runoob=>'runoob.com', -taobao=>'taobao.com');
# $val = $dataaa{-google};
#
# # 读取哈希
# %data = ('google'=>'google.com', 'runoob'=>'runoob.com', 'taobao'=>'taobao.com');
# @array = @data{google, runoob};
# print "Array: @array\n";

# %data = ('google'=>'google.com', 'runoob'=>'runoob.com', 'taobao'=>'taobao.com');
# @names = keys %data;
# print "Names: @names\n";
# @values = values %data;
# print "Values: @values\n";
#
# # 检测元素存在
# %data = ('google'=>'google.com', 'runoob'=>'runoob.com', 'taobao'=>'taobao.com');

# if( exists($data{'facebook'}) ){
#     print "facebook : $data{'facebook'}\n";
# }
# else{
#     print "facebook 键不存在\n";
# }
#
# # 获取哈希大小
# %data = ('google'=>'google.com', 'runoob'=>'runoob.com', 'taobao'=>'taobao.com');

# @keys = keys %data;
# $size = @keys;
# print "1- 哈希大小 $size\n";

# @values = values %data;
# $size = @values;
# print "2- 哈希大小 $size\n";
#
# # 添加删除元素
# %data = ('google'=>'google.com', 'runoob'=>'runoob.com');
# @keys = keys %data;
# $size = @keys;
# print "1-哈希大小: $size\n";

# $data{'facebook'} = 'facebook.com';
# @keys = keys %data;
# $size = @keys;
# print "2-哈希大小: $size\n";

# delete $data{'runoob'};
# @keys = keys %data;
# $size = @keys;
# print "3-哈希大小: $size\n";
