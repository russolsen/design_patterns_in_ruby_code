design_patterns_in_ruby_code
============================

The code from Russ Olsen's book Design Patterns in Ruby (http://goo.gl/OKPQw)

I've updated the code so that it runs with Ruby 1.9.3,
but do keep in mind that some of this code is more than
six years old: Thinking and coding styles do change.

The repo is organized by chapter, one subdirectory per chapter.
In each subdirectory you will find Ruby files with names like
ex1_report.rb or ex15_subclass_test.rb or ex13_account_demo.rb.

The files are numbered to roughly follow the order that the
code appears in the book. For example, chap01/ex3_vehicle.rb
appears in the book before chap01/ex8_delegate.rb.

The files whose names end with “demo” are a bit special.
These guys contain the code for the fragmentary, inline examples
(as opposed to full classes) that are sprinkled throughout the 
book – take a look at the code on page 6. These “demo” files
actually make use of a couple of utility methods found in the
"example.rb" in the root code directory.

The problem I had with fragmentary examples was that I wanted to
be sure that the code actually worked, and that the output
that I claimed the code produced actually came out of the code,
no small feat when you are dealing with more than 100 separate 
examples. The solution that I came up with was to wrap each
little example in a call to a method (defined in example.rb)
 called example:

    example %q{
    my_car = Car.new
    my_car.drive(200)
    }

Look closely at the code above and you will see that the 
example code gets passed to the example method as a string.
The example method does two things with that string: first
it prints it out (so that I could snag the code for inclusion
in the book) and then executes it (so that I could snag the
output for inclusion in the book). Ah the wonders of Ruby!

Finally, there are a couple of examples in the later parts
of the book which just didn’t fit into the ex##_*.rb naming
scheme, but these should be pretty self explanatory.

If you have any questions or comments, just email me at
russ@russolsen.com or ping me on twitter @russolsen.

Russ
