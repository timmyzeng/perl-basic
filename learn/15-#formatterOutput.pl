# !/usr/bin/perl

=pod 格式化输出格式
format FormatName =
fieldline
value_one, value_two, value_three
fieldline
value_one, value_two
.

# FormatName : 格式化名称
# fieldline : 格式行，定义输出行格式，类似@,^,<,>,|的字符
# value_one, value_two : 数据行，在格式行中插入的值，perl的变量
# . : 结束符号
#
# 使用write按照格式进行输出
#
# e.g.
$text = "google runoob taobao";
format STDOUT =
first: ^<<<<< # 左边对齐长度为6
    $text
second: ^<<<<< # 左边对齐长度为6
    $text
third: ^<<<< # 左边对齐长度为5, taobao 最后一个"o"被截断
    $text
.
write
=cut

=pod fieldline语法

# 以@、^开头，不做任何形式的变量代换
# @ 是普通字段
# ^ 多用于多行文本块填充
# @、^之后的<,>,|决定字段的长度，超出长度将被截断
# <,>,| 表示左对齐、右对齐、居中对齐
# @###.## : 固定精度数字，表示七个字符宽度，小数点前4个，小数点后2个
# 字符宽度包括了@字符
# @* : 多行文本

format EMPLOYEE =
===============================
@<<<<<<<<<<<<<<<<<<< @<<
$name, $age
@#####.##
$salary
===============================
.

select(STDOUT);
$~ = EMPLOYEE;

@n = ("Ali", "Runoob", "Jaffer");
@a = (20, 30, 40);
@s = (2000.00, 2500.20, 4000.235);

$i = 0;
foreach (@n){
    $name = $_;
    $age = $a[$i];
    $salary = $s[$i++];
    write;
}

=cut

=pod 格式变量
# $~($format_name): 格式名字
# $^($format_top_name): 表头格式名字
# $%($format_page_number): 当前输出的页号
# $=($format_lines_per_page): 每页中的行数
# $|($format_autoflush): 自动刷新输出缓冲区
# $^L($format_formfeed): 在每一页表头之前需要输出的字符串

# 1
$~ = "MYFORMAT"; # 指定缺省文件变量下所使用的格式
write; # 输出$~所指定的格式

format MYFORMAT =
============================
        Text #测试
============================
.

# 2
write; # 不指定$~会自动寻找名为"STDOUT"的格式

format STDOUT =
~ 用"~"指定的文字不会输出
===========================
        STDOUT
===========================
.

# 3
format EMPLOYEE =
==============================
@<<<<<<<<<<<<<<<<<<<< @<<
$name, $age
@#####.##
$salary
==============================
.

format EMPLOYEE_TOP =
------------------------------
Name                Age Page @<
                             $%
# $% 指定页码
------------------------------
.

select(STDOUT);
$~ = EMPLOYEE;
# 指定表头
$^ = EMPLOYEE_TOP;

@n = ("Ali", "Runoob", "Jaffer");
@a = (20, 30, 40);
@s = (2000.00, 2500.20, 4000.235);

$i = 0;
foreach (@n){
    $name = $_;
    $age = $a[$i];
    $salary = $s[$i++];
    write;
}
=cut

=pod 输出到文件
# 输出到tmp中
if (open(MYFILE, ">tmp")){
$~ = "MYFORMAT";
write MYFILE; # 含有文件变量的输出，使用变量同名的格式，忽略$~指定的值

# 这里不能使用缩进……
format MYFILE =
========================
    输入到文件中
========================
.
close MYFILE;
}

# 使用select函数
if (open(MYFILE, ">>tmp")){
select(MYFILE); # 默认文件变量的打印输出到MYFILE中
$~ = "OTHER";
write;

format OTHER =
==============================
  使用指定的格式输入到文件中
==============================
.

close MYFILE;
}

=cut

