using SimpleDirectMediaLayer
using SimpleDirectMediaLayer.LibSDL2

using Phoenix  # must be in the active environment
Phoenix.Engine.Init("Phoenix", Phoenix.Types.Vector2(25,25), Phoenix.Types.Vector2(1000,1000))

Phoenix.Draw.Line(Phoenix.Vector2(0,500), Phoenix.Vector2(500,0), Phoenix.Color("#77777777"))

Phoenix.Screen.Display()

sleep(10)

Phoenix.Engine.Quit()