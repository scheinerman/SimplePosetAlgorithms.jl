using  Test
using SimplePosets, SimplePosetAlgorithms

P = BooleanLattice(5)
C = max_chain(P)
@test length(C) == 6
@test height(P) == 6

A = max_antichain(P)
@test length(A) == 10
@test width(P) == 10
