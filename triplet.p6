#!/usr/bin/perl6
# Pythagorean triplet where a + b + c = 1000
sub isin( $n , @a ){
	for @a {
		return False if $_ > $n;
		return True if $_ == $n;
	}
}
my @squares = map({exp(2,$_)},0..*);
for 1..* -> $a {
	for 1..1000 -> $b {
		my $cs = (@squares[$a] + @squares[$b]);
		next unless (isin($cs,@squares));
		my $c = sqrt($cs);
		say ($a + $b + $c);
		if (($a + $b + $c)==1000) {
			say ($a * $b * $c);
			exit 0;
		}
	}
}
