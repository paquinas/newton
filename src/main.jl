using SimpleDirectMediaLayer
using SimpleDirectMediaLayer.LibSDL2

using Phoenix  # must be in the active environment
Phoenix.Engine.Init("Phoenix", Phoenix.Types.Vector2(25,25), Phoenix.Types.Vector2(1001,1001))

function fractal(p1::Phoenix.Vector2, p2::Phoenix.Vector2, p3::Phoenix.Vector2, depth::Int)
    Phoenix.Draw.Triangle(p1, p2, p3, Phoenix.Color("#000FFF"))
    if depth > 1
        fractal(p1, (p1+p2)/2, (p1+p3)/2, depth-1)
        fractal(p2, (p1+p2)/2, (p2+p3)/2, depth-1)
        fractal(p3, (p3+p2)/2, (p1+p3)/2, depth-1)
    end
end

fractal(
    Phoenix.Vector2(1000,1000),
    Phoenix.Vector2(0,1000),
    Phoenix.Vector2(500, 0),
    8
)

Phoenix.Screen.Display()

sleep(10)

Phoenix.Engine.Quit()