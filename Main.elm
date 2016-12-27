module Main exposing( .. )

import Html
import String

view name =
    "Ahoy, " ++ name ++ "!"


main =
    Html.text (String.toUpper (view "Regis"))

