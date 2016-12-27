module Main exposing( .. )

import Html

view name =
    "Ahoy, " ++ name ++ "!"


main =
    Html.text (view "Cuducos")

