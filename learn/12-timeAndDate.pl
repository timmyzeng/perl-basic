# !/usr/bin/perl

# # localtime and gmtime
# $local_date = localtime();
# print "$local_date\n";

# $gmt_date = gmtime();
# print "$gmt_date\n";

# # 格式化时间
# # mon：月，0~11
# # year：年，从1900开始计算
# # mday：天，1~31
# # wday：星期，0~6，0表示周天
# # yday：年中的天，0~365
# # isdst：是否夏令时
# ($sec, $min, $hour, $mday, $mon, $year, $wday, $yday, $isdst) = localtime();
# printf("格式化时间： HH:MM:SS\n");
# printf("%02d:%02d:%02d\n", $hour, $min, $sec);

# # 新纪元时间Epoch time
# $epoc = time();
# print "从1970.1.1开始: $epoc\n";

# ($sec, $min, $hour, $mday, $mon, $year, $wday, $yday, $isdst) = localtime();
# print "当前时间和日期：";
# printf("%d-%d-%d %d:%d:%d\n", $year+1900, $mon+1, $mday, $hour, $min, $sec);

# $epoc = time();
# $epoc = $epoc - 24*60*60;
# ($sec, $min, $hour, $mday, $mon, $year, $wday, $yday, $isdst) = localtime($epoc);
# print "昨天时间和日期：";
# printf("%d-%d-%d %d:%d:%d\n", $year+1900, $mon+1, $mday, $hour, $min, $sec);

# # POSIX strftime()
# use POSIX qw(strftime);

# $datestring = strftime "%Y-%m-%d %H:%M:%S", localtime;
# print "时间日期 - $datestring\n";
