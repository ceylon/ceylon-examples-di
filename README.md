# Dependency Injection in Ceylon with Weld and Guice

This project contains simple examples of the use of [Weld][] 
and [Guice][] in Ceylon.

[Weld]: http://weld.cdi-spec.org
[Guice]: https://github.com/google/guice

## Requirements

To compile and run the examples, you'll need to have either
Ceylon IDE, or the [Ceylon command line distribution][download] 
installed on your machine. Ceylon 1.3.3 is required. On the
command line you can use the provided `ceylonb` command if 
you don't have Ceylon already installed. If you *do* already
have the Ceylon command line tools installed, you can type
`ceylon` instead of `./ceylonb` in the following 
instructions. 

[download]: http://ceylon-lang.org/download

## Compiling the examples

To compile the examples, either import this project into
Ceylon IDE, or, in this directory, type:

    ./ceylonb compile

## Running the examples

To run the Weld example, in this directory, type:

    ./ceylonb run weldelicious

To run the Guice example, in this directory, type:

    ./ceylonb run guicy
    
## Running the examples using plain Java

To assemble and then run a fat jar containing the Weld 
example, in this directory, type:

    ./ceylonb fat-jar weldelicious
    java -jar weldelicious-1.0.0.jar

To assemble and then run a fat jar containing the Guice 
example, in this directory, type:

    ./ceylonb fat-jar guicy
    java -jar guicy-1.0.0.jar

## Running the examples using Ceylon assemblies

To assemble and then run a `.cas` archive  containing the 
Weld example, in this directory, type:

    ./ceylonb assemble weldelicious
    ceylon run -a weldelicious-1.0.0.case

To assemble and then run a `.cas` archive  containing the 
Guice example, in this directory, type:

    ./ceylonb assemble guicy
    ceylon run -a guicy-1.0.0.case
