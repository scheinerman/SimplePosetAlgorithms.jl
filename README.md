# SimplePosetAlgorithms


[![Build Status](https://travis-ci.org/scheinerman/SimplePosetAlgorithms.jl.svg?branch=master)](https://travis-ci.org/scheinerman/SimplePosetAlgorithms.jl)


[![codecov.io](http://codecov.io/github/scheinerman/SimplePosetAlgorithms.jl/coverage.svg?branch=master)](http://codecov.io/github/scheinerman/SimplePosetAlgorithms.jl?branch=master)


Additional algorithms for the `SimplePoset` type. Relies on
`SimpleGraphAlgorithms`. See that module for more information.

**Note**: Calculations are done via an integer linear program and
  there can be quite slow.

## Functions

* `max_chain(P)` returns a maximum size chain of the `SimplePoset`.

* `max_antichain(P)` returns a maximum size antichain of the
`SimplePoset`

* `width(P)` returns the size of a largest antichain in the
  `SimplePoset`. [**Note**: The function `height` (which gives the size
  of a largest chain) is already defined in the `SimplePosets` module
  and does not rely on integer linear programming.]

## Examples

```julia
julia> using SimplePosets; using SimplePosetAlgorithms

julia> using ShowSet # module for nicer Set output

julia> P = Boolean(5)
SimplePoset{ASCIIString} (32 elements)

julia> max_chain(P)
{00000,00100,00101,00111,10111,11111}

julia> max_antichain(P)
{00011,00101,00110,01001,01010,01100,10001,10010,10100,11000}
```
