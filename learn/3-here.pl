# !/usr/bin/perl

$a = 10;
$var = <<"EOF";
这是一个Here文档实例，使用双引号。
可以在这输入字符串和变量。
例如：a = $a
EOF
print "$var\n";

$var = <<'EOF';
这是一个Here文档实例，使用单引号。
例如：a = $a
EOF
print "$var\n";
