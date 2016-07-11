#!/usr/bin/perl6
#Sum even fibbonacci numbers less than 4,000,000
use experimental :cached;
sub fib($n) is cached {
	return $n if ($n < 2);
	return fib($n - 1) + fib($n - 2);
}
my @fibs = map( { fib($_) } , 1..* );
say sum map( -> $x { last if $x > 4e6; $x if $x %% 2 }, @fibs );
