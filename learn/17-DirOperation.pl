# !/usr/bin/perl

=pod 标准函数
opendir DIRHANDLE, EXPR
readdir DIRHANDLE
rewinddir DIRHANDLE # 定位指针到开头
telldir DIRHANDLE # 返回目录的当前位置
seekdir DIRHANDLE, POS # 定位指针到POS位置
closedir DIRHANDLE
=cut

=pod 目录操作
# 使用了 glob 操作符
# 输出tmp目录下的所有文件
$dir = "/tmp/*";
my @files = glob($dir);

foreach(@files){
    print $_."\n";
}

# 输出tmp目录和home目录下的所有文件
$dir = "/tmp/* /home/*";

=cut

=pod opendir\readdir\closedir
# 当前目录下的文件
opendir(DIR, '.') or die "can't open dir, $!";
while ($file = readdir DIR){
    print "$file\n";
}
closedir DIR;

# 当前目录下的.pl文件
opendir(DIR, '.') or die "can't open dir, $!";
foreach (sort grep(/^.*\.pl$/, readdir(DIR))){
    print "$_\n";
}
closedir DIR;
=cut

=pod mkdir
# 创建新目录
$dir = "./testDir";
mkdir($dir) or die "can't create $dir dir, $!";
print "success\n";
=cut

=pod rmdir
# 删除目录
$dir = "./testDir";
rmdir($dir) or die "can't delete $dir dir, $!";
print "success\n";
=cut

=pod chdir????感觉没什么用诶
$dir = "/home/admin/code";
chdir($dir) or die "can't delete $dir dir, $!";
print "success, now you're in $dir\n";
=cut


