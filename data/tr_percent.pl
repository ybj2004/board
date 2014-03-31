#!/usr/bin/perl      


while(<>){
        chomp; 
        #   s/%/\\\%/g;
        s/\\sf//g;
print "$_ \n";

}


