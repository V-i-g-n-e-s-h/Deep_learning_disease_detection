module Model
using Flux
build_model() = Chain(Conv((3,3),1=>8,relu), MaxPool((2,2)), Flux.flatten, Dense(1352,10), softmax)
end
