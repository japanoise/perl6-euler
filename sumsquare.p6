#!/usr/bin/perl6
#Find the difference between the sum of the squares of the first one hundred natural numbers and the square of the sum.
my @array = 1..100;
say @array.map({exp(2, $_)}).sum - exp(2, @array.sum);
