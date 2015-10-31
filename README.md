# SimplePosetAlgorithms

Additional algorithms for the `SimplePoset` type. Relies on
`SimpleGraphAlgorithms`. See that module for more information.

**Note**: Calculations are done via an integer linear program and
  there can be quite slow.

## Functions

* `max_chain(P)` returns a maximum size chain of the `SimplePoset`.

* `max_antichain(P)` returns a maximum size antichain of the
`SimplePoset`


## Examples

```julia
julia> using SimplePosets; using SimplePosetAlgorithms

julia> using ShowSet # (my module for prettier output; ignore warnings)

julia> P = Boolean(5)
SimplePoset{ASCIIString} (32 elements)

julia> max_chain(P)
{00000,00100,00101,00111,10111,11111}

julia> max_antichain(P)
{00011,00101,00110,01001,01010,01100,10001,10010,10100,11000}
```
