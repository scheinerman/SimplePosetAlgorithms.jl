module SimplePosetAlgorithms

using SimpleGraphs
using SimplePosets
using SimpleGraphAlgorithms


function max_chain(P::SimplePoset)
    return max_clique(ComparabilityGraph(P))
end

function max_antichain(P::SimplePoset)
    return max_indep_set(ComparabilityGraph(P))
end


end # of module SimplePosetAlgorithms
