module Evaluate
using Flux
accuracy(m,x,y)=mean(onecold(m(x)) .== y)
end
