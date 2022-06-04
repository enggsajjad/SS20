#!/usr/bin/perl
use warnings;
use strict;
#convert the .string datatypes into 32bit wide ascii values
#Example below
#Required packages CPAN->String::Interpolate

##
while (<>) {
	s!\s*\.comm\s+(_\w+),(\d+),(\d+)\n!
    "\n\t.section\t.data\n$1:\n" . "\t.data.32 0\n" x ($2/$3)!e;
	print;
}

#Example
#	.comm	_resultAvg,80,4

#LC0:
#   .string "Testing...\r\n"
#
#LC1:
#   .string "HelloWorld...\r\n"
# 0x54657374, 0x696e672e, & 0x2e2e0d0a. And then converted in decimal as:
#
#LC0:
#    .data.32 1415934836
#    .data.32 1768843054
#    .data.32 774769930
#and similarly the LC1 to 0x48656c6c, 0x6f576f72, 0x6c642e2e & 0x2e0d0a00 as:
#
#LC1:
#    .data.32 1214606444
#    .data.32 1868001138
#    .data.32 1818504750
#    .data.32 772606464


