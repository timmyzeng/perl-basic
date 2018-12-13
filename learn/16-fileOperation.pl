# !/usr/bin/perl

=pod 文件
# 文件句柄: FILEHANDLE
# STDIN, STDOUT, STDERR

# 格式(两个函数)
open FILEHANDLE, EXPR
open FILEHANDLE

sysopen FILEHANDLE, FILENAME, MODE, PERMS
sysopen FILEHANDLE, FILENAME, MODE

# FILEHANDLE: 文件句柄
# EXPR: 文件名及文件访问类型组成的表达式
# MODE: 文件访问类型
# PERMS: 访问权限位 permission bits
=cut

=pod open函数
# 打开文件并将文件内容输出
open(DATA, "<file.txt") or die "file.txt can't open, $!";
while (<DATA>){
    print "$_";
}

# "<或r" 表示只读打开，文件指针指向文件头
# ">或w" 表示写入方式打开，清空文件内容或创建文件
# ">>或a" 表示写入方式打开，文件指针指向文件尾或创建文件
# "+<或r+" 表示读写方式打开，文件指针指向文件头
# "+>或w+" 表示读写方式打开，清空文件内容或创建文件
# "+>>或a+" 表示读写方式打开，文件指针指向文件尾或创建文件
=cut

=pod sysopen函数
sysopen(DATA, "file.txt", O_RDWR);
sysopen(DATA, "file.txt", O_RDWR | O_TRUNC, 0777);

# O_RDWR : 读写方式，文件指针指向文件头
# O_RDONLY : 只读方式，文件指针指向文件头
# O_WRONLY : 写入方式，清空文件内容或创建文件
# O_CREAT : 创建文件
# O_APPEND : 追加文件
# O_TRUNC : 将文件清空
# O_EXCL : 如果使用O_CREAT的时候文件存在 ，返回错误信息，测试文件是否存在
# O_NONBLOCK : 设置非阻塞IO，要么成功，要么立刻返回错误
=cut

=pod close函数
# 关闭文件，并刷新输入输出缓冲区
close FILEHANDLE
=cut

=pod 读写文件
# <FILEHANDLE>操作符
print "runoob :\n";
$name = <STDIN>;
print "address: $name\n";

open(DATA, "<file.txt") or die "can't open file\n";
@lines = <DATA>;
print @lines;
close(DATA);

# getc函数
# getc FILEHANDLE
open(DATA, "<file.txt") or die "can't open file\n";
@char= getc DATA;
print @char,"\n";
close(DATA);

# read 函数，读取二进制
read FILEHANDLE, SCALAR, LENGTH, OFFSET
read FILEHANDLE, SCALAR, LENGTH

# SCALAR: 保存结果，放在OFFSET字节之后，
# 如果没有制定OFFSET放在SCALAR的开头
# LENGTH: 读取内容长度
# OFFSET: 偏移量
# 成功返回字节数，在文件结尾返回0，错误返回undef

# print 函数
print FILEHANDLE LIST
print LIST
print

print "HELLO WORLD!\n";

open(DATA1, "<file.txt");
open(DATA2, ">file1.txt");
while(<DATA1>){
    print DATA2 $_;
}
close(DATA1);
close(DATA2);

# 文件重命名
rename("file1.txt", "file2.txt");

# 删除文件
unlink("fine path")
=cut

=pod 指定文件位置
# tell 返回文件指针的位置，按字节计算
tell FILEHANDLE
tell

# seek 函数
seek FILEHANDLE, POSITION, WHENCE
# FILEHANDLE: 文件句柄
# POSITION: 文件指针要移动的字节数
# WHENCE: 文件指针开始移动的起始位置，0、1、2，
# 分别表示开头、当期按、文件尾

# 从文件开头读取256个字节
seek DATA, 256, 0;
=cut

=pod 文件信息
my $file = "file1.txt";
my (@description, $size);
if (-e $file){
    push @description, '二进制' if (-B _);
    push @description, 'socket' if (-S _);
    push @description, '文本' if (-T _);
    push @description, '特殊块' if (-b _);
    push @description, '特殊字符' if (-c _);
    push @description, '目录' if (-d _);
    push @description, '存在' if (-x _);
    push @description, (($size = -s _)) ? "$size 字节" : '空';
    print "$file 信息: ", join(', ', @description), "\n";
}

# 文件操作符 http://www.runoob.com/perl/perl-files.html
=cut
