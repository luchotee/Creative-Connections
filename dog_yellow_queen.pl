#!/usr/bin/perl

#Creative Connections

#This program uses various functions of Perl to create an exciting environment for users to tap into their creative side.

# Imports
use strict;
use warnings;
use feature qw(say);
use List::Util qw( min max );

#Declare Global Variables 
my $num;
my $listSize;
my @list;
my $fileName;
my $total;
my %vowels;
my @words;


# MAIN LOOP
main();

sub main {
	# Initialize Global Variables
	$num = 0;
	$listSize = 0;
	@list = ();
	$fileName = '';
	$total = 0;
	%vowels = (
		'a' => 0,
		'e' => 0,
		'i' => 0,
		'o' => 0,
		'u' => 0
	);
	@words = ();
	
	# Prompt for user input
	print "Welcome to Creative Connections!\n";
	print "What kind of creative experience would you like to start?\n";
	print "(1) Create a text file \n(2) Generate a random number\n (3) Analyze a text document\n";
	$num = <STDIN>;
	
	if($num == 1) {
		createTextFile();
	} elsif($num == 2) {
		generateRandomNumber();
	} elsif($num == 3) {
		analyzeTextDocument();
	}
	
	
	# Exit
	print "Exiting Creative Connections...\n";
	exit;
}

# Create a text file
sub createTextFile {
	# Ask the user for a file name
	print "What would you like to name the text file?\n";
	$fileName = <STDIN>;
	
	# Ask the user for a list size
	print "How many items do you want to put in the file?\n";
	$listSize = <STDIN>;
	
	# Generate a list of random numbers
	for (my $i = 0; $i < $listSize; $i++) {
		push(@list, int(rand(100)));
	}
	
	# Create the text file
	open(my $fh, '>', $fileName) or die "Could not open file '$fileName' $!";
	for (my $i = 0; $i < $listSize; $i++) {
		print $fh $list[$i] . "\n";
	}
	close $fh;
	
	# Print the contents to the screen
	print "The contents of the file are now:\n";
	open(my $fh1, '<:encoding(UTF-8)', $fileName)
		or die "Could not open file '$fileName' $!";
	
	while (my $row = <$fh1>) {
		chomp $row;
		print "$row\n";
	}
	close $fh1;
}

# Generate a random number
sub generateRandomNumber {
	# Generate random number and print to the screen
	my $randNum = int(rand(100));
	print "Your random number is: $randNum";
}

# Analyze a text document
sub analyzeTextDocument {
	# Ask the user for a file name
	print "What is the name of the document you would like to analyze?\n";
	$fileName = <STDIN>;
	
	# Open the user-specified file
	open(my $fh, '<:encoding(UTF-8)', $fileName)
		or die "Could not open file '$fileName' $!";
		
	# Read the words from the document into an array
	while (my $row = <$fh>) {
		chomp $row;
		@words = split(/\s/, $row);
	}
	close $fh;
	
	# Count the number of vowels in each word
	foreach my $word (@words) {
		countVowels($word);
	}
	
	# Print the vowel count
	print "The vowel count is:\n";
	while (my ($key, $value) = each %vowels) {
		print "$key : $value\n";
	}
	
	# Print the total number of vowels
	print "The total number of vowels is: $total\n";
}

# Count the vowels in a word
sub countVowels {
	my $word = shift;
	my @characters = split(//, $word);
	
	foreach my $char (@characters) {
		$char = lc($char);
		if (exists $vowels{$char}) {
			$vowels{$char} += 1;
			$total += 1;
			}
		}
}