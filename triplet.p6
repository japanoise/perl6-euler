#!/usr/bin/perl6
# Pythagorean triplet where a + b + c = 1000
my @squares = map({exp(2,$_)},0..*);
for 2..500 -> $c {
	for 2..$c -> $a {
		my $b = 1000 - $c - $a;
		if @squares[$a] + @squares[$b] == @squares[$c] {
			say ($a * $b * $c);
			exit 0;
		}
	}
}
