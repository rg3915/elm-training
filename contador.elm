module Main exposing( .. )

import Html exposing (div, h1, text, button)
import Html.App
import Html.Events exposing (onClick)
import String


-- Model

initialModel = 0

-- Update

type Msg
    = Increment
    | Decrement

update : Msg -> Int -> Int
update msg model =
    case msg of
        Increment ->
            model + 1

        Decrement ->
            model - 1

-- View

view : Int -> Html.Html Msg
view num =
    div
        []
        [ button [ onClick Decrement ] [ text "-" ]
        , h1 [] [ text <| toString num ]
        , button [ onClick Increment ] [ text "+" ]
        ]


-- Init

main =
    Html.App.beginnerProgram
        { model = initialModel
        , update = update
        , view = view
        }