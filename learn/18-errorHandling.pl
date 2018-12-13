# !/usr/bin/perl

=pod warn和die
# warn 只是报警，不会终止，输出到STDERR
chdir('/aaa') or warn "can't change dir\n";
print "can do next lines\n";

# die 会进行终止
chdir('/aaa') or die "can't change dir\n";
print "can do next lines\n";
=cut

=pod Carp模块
=cut

package T;

require Exporter;
@ISA = qw/Exporter/;
@EXPORT = qw/function/;
use Carp;

sub function {
    carp "Error in module!";
}
1;
