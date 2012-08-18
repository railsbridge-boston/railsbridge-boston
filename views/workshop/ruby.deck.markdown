!SLIDE bullets
# What is Ruby?
* Ruby is a object oriented programming language, developed in the mid-1990s by Yukihiro "Matz" Matsumoto.
* Ruby is an interpreted language, it gets executed through an interpreter program rather than a compiler. (1.8 -> Ruby MRI, 1.9 -> YARV).
* Interactive Ruby Shell (IRB) is a command line program that allows the execution of Ruby commands directly into the interpreter.
* Matz once stated "I hope to see Ruby help every programmer in the world to be productive, and to enjoy programming, and to be happy. That is the primary purpose of Ruby language."

!SLIDE bullets
# Basic Ruby Syntax
* All ruby files will have extension .rb.
* Whitespace characters such as spaces and tabs are generally ignored in Ruby code, except when they appear in strings.
* Ruby interprets semicolons and newline characters as the ending of a statement.
* Ruby comments start with a pound/sharp (#) character and go to the end of the line.

!SLIDE bullets
# Variables
* Variables are used to keep track of objects, each variable holds a reference to an object.
* No need to declare a variable
* Identifiers are names of variables, constants, and methods
* Ruby identifiers are case sensitive, therefore var myapple and var myApple are two different variables
* $ - global variable
* @ - instance variable
* [a-z] or _ - local variable
* [A-Z] - constant

!SLIDE bullets
# Arrays and Hashes
* Ruby’s arrays and hashes are indexed collections.
* Both store collections of varying objects, accessible using a key.
* An Array's key is an integer: a = ["one", "two", "three", "four"] 
* A Hash's key can be any object: h = {"a" => "one", "b" = "two", "c" => "three", "d" => "four"}

!SLIDE bullets
# Control Structures
* Control structures include: if, unless, while, until, and for statements, among others.
* Ruby uses the keyword 'end' instead of braces to signify the end of a control structure.
* The values false and nil are false, and everything else are true.
* if: Executes code if the conditional is true.
* unless: Executes code if conditional is false.
* while: Executes code while conditional is true.
* until: Executes code while conditional is false.
* for: Executes code once for each element in expression.

!SLIDE bullets
# Methods
* Ruby methods are very similar to functions in any other programming language.
* Ruby methods are a set of expressions that returns a value. 
* Method names should begin with a lowercase letter.
* Every method in Ruby returns a value by default, the returned value will be the value of the last statement.