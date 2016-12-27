module Main exposing( .. )

import Html exposing (div, ul, li, text, button)
import Html.Attributes exposing (class)
import Html.App
import String


-- Model

initialModel = 0

-- Update

update msg model =
    model

-- View

view : Int -> Html.Html msg
view num =
    ul
        [ class "menu" ]
        [ li [] [ text "Home" ]
        , li [] [ text "Contact" ]
        ]
    Html.text (toString num)


-- Init

main =
    Html.App.beginnerProgram
        { model = initialModel
        , update = update
        , view = view
        }