module Bob exposing (..)

import String
import Char
import Regex


hey : String -> String
hey string =
    if string == (String.toUpper string) && String.any isAlpha string then
        "Whoa, chill out!"
    else if String.endsWith "?" string then
        "Sure."
    else if Regex.contains (Regex.regex "^\\s*$") string then
        "Fine. Be that way!"
    else
        "Whatever."


isAlpha : Char -> Bool
isAlpha char =
    Char.isLower char || Char.isUpper char
