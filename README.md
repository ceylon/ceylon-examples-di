# Dependency Injection in Ceylon with Weld and Guice

This project contains simple examples of the use of [Weld][] 
and [Guice][] in Ceylon.

[Weld]: http://weld.cdi-spec.org
[Guice]: https://github.com/google/guice

## Requirements

To compile and run the examples, you'll need to have either
Ceylon IDE, or the [Ceylon command line distribution][download] 
installed on your machine. Ceylon 1.3.1 is required.

[download]: http://ceylon-lang.org/download

## Compiling the examples

To compile the examples, either import this project into
Ceylon IDE, or, in this directory, type:

    ceylon compile

## Running the examples

To run the Weld example, in this directory, type:

    ceylon run weldelicious

To run the Guice example, in this directory, type:

    ceylon run guicy

## Running the examples using plain Java

To assemble and then run a fat jar containing the Weld 
example, in this directory, type:

    ceylon fat-jar weldelicious
    java -jar weldelicious-1.0.0.jar

To assemble and then run a fat jar containing the Guice 
example, in this directory, type:

    ceylon fat-jar guicy
    java -jar guicy-1.0.0.jar
    