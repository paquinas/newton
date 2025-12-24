using SimpleDirectMediaLayer
using SimpleDirectMediaLayer.LibSDL2

using Phoenix  # must be in the active environment
v1 = Vector2(0,1)
v2 = Vector2(1,0)
v3 = Vector2(0,1)

println(2 * v1)
println(v1 * 2)
println(v2 + v3)
println(v1 + v2)
println(Dot(v1, v2))