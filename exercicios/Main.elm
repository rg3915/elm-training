module Main exposing( .. )

import Html
import String


view : String -> String
view name =
    "Ahoy, " ++ name ++ "!"


main : Html.Html msg
main =
    view "Regis"
        |> String.toUpper
        |> Html.text

