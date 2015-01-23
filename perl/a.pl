#!/usr/bin/perl
@userinput = <STDIN>;
foreach $line (@userinput) {
  if ($line =~ /title:\s*([0-9]*\s+(.*\S)\s*artist/) {
    print "$1\n";
  }
}
