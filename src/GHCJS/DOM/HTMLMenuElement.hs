{-# LANGUAGE CPP #-}
#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
{-# LANGUAGE ForeignFunctionInterface, JavaScriptFFI #-}
module GHCJS.DOM.HTMLMenuElement
       (ghcjs_dom_html_menu_element_set_compact,
        htmlMenuElementSetCompact, ghcjs_dom_html_menu_element_get_compact,
        htmlMenuElementGetCompact, HTMLMenuElement, IsHTMLMenuElement,
        castToHTMLMenuElement, gTypeHTMLMenuElement, toHTMLMenuElement)
       where
import GHCJS.Types
import GHCJS.Foreign
import GHCJS.Marshal
import Data.Int
import Data.Word
import GHCJS.DOM.Types
import Control.Applicative ((<$>))
import GHCJS.DOM.EventM

 
foreign import javascript unsafe "$1[\"compact\"] = $2;"
        ghcjs_dom_html_menu_element_set_compact ::
        JSRef HTMLMenuElement -> Bool -> IO ()
 
htmlMenuElementSetCompact ::
                          (IsHTMLMenuElement self) => self -> Bool -> IO ()
htmlMenuElementSetCompact self val
  = ghcjs_dom_html_menu_element_set_compact
      (unHTMLMenuElement (toHTMLMenuElement self))
      val
 
foreign import javascript unsafe "($1[\"compact\"] ? 1 : 0)"
        ghcjs_dom_html_menu_element_get_compact ::
        JSRef HTMLMenuElement -> IO Bool
 
htmlMenuElementGetCompact ::
                          (IsHTMLMenuElement self) => self -> IO Bool
htmlMenuElementGetCompact self
  = ghcjs_dom_html_menu_element_get_compact
      (unHTMLMenuElement (toHTMLMenuElement self))
#else
module GHCJS.DOM.HTMLMenuElement (
  module Graphics.UI.Gtk.WebKit.DOM.HTMLMenuElement
  ) where
import Graphics.UI.Gtk.WebKit.DOM.HTMLMenuElement
#endif
