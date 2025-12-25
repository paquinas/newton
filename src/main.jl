using SimpleDirectMediaLayer
using SimpleDirectMediaLayer.LibSDL2

using Phoenix  # must be in the active environment
SDL_Init(SDL_INIT_EVERYTHING)
window = Frame(Vector2(500, 500), Vector2(450, 350), "Window!!!")

global _run = true
while _run
    eventRef = Ref{SDL_Event}()
    while Bool(SDL_PollEvent(eventRef))
        if eventRef[].type == SDL_QUIT
            global _run = false
            break
        end
    end

    SDL_Delay(1000 ÷ 60)
end

SDL_DestroyRenderer(window.renderer)
SDL_DestroyWindow(window.window)
SDL_Quit()