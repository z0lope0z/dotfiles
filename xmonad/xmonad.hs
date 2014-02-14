--
-- An example, simple ~/.xmonad/xmonad.hs file.
-- It overrides a few basic settings, reusing all the other defaults.
--

import XMonad

main = xmonad $ defaultConfig
    { borderWidth        = 2
    , normalBorderColor  = "#000000"
    , focusedBorderColor = "#000000" }
