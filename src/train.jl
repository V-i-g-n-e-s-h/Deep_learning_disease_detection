module Train
using Flux; include("model.jl"); include("aco.jl")
function train(x,y)
    m=Model.build_model()
    ACO.optimize(params(m))
    Flux.train!(loss->Flux.logitcrossentropy(m(x),y),params(m),[(x,y)],ADAM())
    m
end
end
