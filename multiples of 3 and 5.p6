#!/usr/bin/perl6
# Sum of all multiples of 3 and 5 between 1000
my $total = 0;
for 1..999 {
	$total += $_ if ($_ mod 5 == 0 or $_ mod 3 == 0);
}
say $total;
