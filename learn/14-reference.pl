# !/usr/bin/perl

# 引用就是指针

=pod 创建引用
# 在变量名前面加上"\"，就得到改变量的引用
$scalarref = \$foo;     # 标量引用
$arrayref = \@ARGV;     # 列表引用
$hashref = \%ENV;       # 哈希引用
$coderef = \&handler;   # 函数引用
$globref = \*foo;       # GLOB句柄引用
=cut

=pod 匿名引用
# 数组使用[]
$arrayref = [1, "foo", undef, 13];
# hash使用{}
$hashref = {APR => 4, AUG => 8};
# 函数引用
$coderef = sub { print "Runoob!\n" };
=cut

=pod 取消引用
# 根据对应的类型使用@$%进行取消
#
# $r引用$var
$r = \$var;
# $$r取消引用
print "$$r\n";

# 可以使用ref获得变量类型
# ref 返回以下几个：
# SCALAR、ARRAY、HASH、CODE、GLOB、REF；
# 否则返回false
$var = 10;
$r = \$var;
print "r ref: ", ref($r), "\n";

@var = (1, 2, 3);
$r = \@var;
print "r ref: ", ref($r), "\n";

%var = ('key1' => 10, 'key2' => 20);
$r = \%var;
print "r ref: ", ref($r), "\n";
=cut

=pod 循环引用
my $foo = 100;
$foo = \$foo;

print "value of foo is :", $$foo, "\n";
=cut

=pod 引用函数
# 引用格式：\&
# 调用引用：&+引用名
sub PrintHash{
    my (%hash) = @_;

    foreach $item (%hash){
        print "item : $item\n";
    }
}

%hash = ('name' => 'runoob', 'age' => 3);
# 创建函数引用
$coderef = \&PrintHash;
# 使用引用调用函数
&$coderef(%hash);
=cut
