= yoda

* http://rubyforge.org/seattlerb

== DESCRIPTION:

Spec yoda will, and spec you shall too.

== FAQ:

Q: Why are there no _____?
A: Use the force.

We accept patches.

Q: Where is the runner script?
A: ruby

== SYNOPSIS:

    class Bowling
      def hit(pins)
      end
    
      def score
        0
      end
    end
    
    require 'yoda'
    
    Bowling.yoda {
      "score 0 for gutter game".it_will {
        bowling = Bowling.new
        20.times { bowling.hit(0) }
    
        bowling.score 0.it_is?
        bowling.score 42.it_is_not!
      }
    }

== REQUIREMENTS:

* rubygems
* hoe (development)
* midichlorians

== INSTALL:

* sudo gem install spec_yoda_will

== LICENSE:

(The MIT License)

Copyright (c) 2009 Ryan Davis, Aaron Patterson, seattle.rb

Permission is hereby granted, free of charge, to any person obtaining
a copy of this software and associated documentation files (the
'Software'), to deal in the Software without restriction, including
without limitation the rights to use, copy, modify, merge, publish,
distribute, sublicense, and/or sell copies of the Software, and to
permit persons to whom the Software is furnished to do so, subject to
the following conditions:

The above copyright notice and this permission notice shall be
included in all copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED 'AS IS', WITHOUT WARRANTY OF ANY KIND,
EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF
MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT.
IN NO EVENT SHALL THE AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY
CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER IN AN ACTION OF CONTRACT,
TORT OR OTHERWISE, ARISING FROM, OUT OF OR IN CONNECTION WITH THE
SOFTWARE OR THE USE OR OTHER DEALINGS IN THE SOFTWARE.
