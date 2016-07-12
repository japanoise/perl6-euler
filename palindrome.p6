#!/usr/bin/perl6
# Stupid algorithm to find largest palindrome made from the product of two 3-digit numbers.
my @palindromes;
for reverse 100..999 -> $x {
	for reverse 100..999 -> $y {
		my $result = $x * $y;
		@palindromes.push($result) if $result == $result.flip;
	}
}
say max(@palindromes);
