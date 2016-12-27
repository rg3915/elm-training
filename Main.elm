module Main exposing( .. )

import Html
import String

view name =
    "Ahoy, " ++ name ++ "!"


main =
    view "Regis"
        |> String.toUpper
        |> Html.text

