module Main exposing( .. )

import Html exposing (div, h1, text, button)
import Html.App
import Html.Events exposing (onClick)
import String


-- Model

type alias Model =
    { counter : Int
    , clicks : Int
    }

initialModel : Model
initialModel =
    { counter = 0
    , clicks = 0
    }

-- Update

type Msg
    = Increment
    | Decrement

update : Msg -> Model -> Model
update msg model =
    case msg of
        Increment ->
            { counter = model.counter + 1
            , clicks = model.clicks + 1
            }

        Decrement ->
            { counter = model.counter - 1
            , clicks = model.clicks + 1
            }

-- View

view : Model -> Html.Html Msg
view model =
    div
        []
        [ button [ onClick Decrement ] [ text "-" ]
        , h1 [] [ text <| toString model.counter ]
        , button [ onClick Increment ] [ text "+" ]
        , (toString model.clicks) ++ " clicks" |> text
        ]


-- Init

main =
    Html.App.beginnerProgram
        { model = initialModel
        , update = update
        , view = view
        }