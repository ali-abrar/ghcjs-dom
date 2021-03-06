{-# LANGUAGE CPP #-}
#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
{-# LANGUAGE ForeignFunctionInterface, JavaScriptFFI #-}
module GHCJS.DOM.DOMSettableTokenList
       (ghcjs_dom_dom_settable_token_list_get, domSettableTokenList_get,
        ghcjs_dom_dom_settable_token_list_set_value,
        domSettableTokenListSetValue,
        ghcjs_dom_dom_settable_token_list_get_value,
        domSettableTokenListGetValue, DOMSettableTokenList,
        IsDOMSettableTokenList, castToDOMSettableTokenList,
        gTypeDOMSettableTokenList, toDOMSettableTokenList)
       where
import GHCJS.Types
import GHCJS.Foreign
import GHCJS.Marshal
import Data.Int
import Data.Word
import GHCJS.DOM.Types
import Control.Applicative ((<$>))
import GHCJS.DOM.EventM

 
foreign import javascript unsafe "$1[\"_get\"]($2)"
        ghcjs_dom_dom_settable_token_list_get ::
        JSRef DOMSettableTokenList -> Word -> IO JSString
 
domSettableTokenList_get ::
                         (IsDOMSettableTokenList self, FromJSString result) =>
                           self -> Word -> IO result
domSettableTokenList_get self index
  = fromJSString <$>
      (ghcjs_dom_dom_settable_token_list_get
         (unDOMSettableTokenList (toDOMSettableTokenList self))
         index)
 
foreign import javascript unsafe "$1[\"value\"] = $2;"
        ghcjs_dom_dom_settable_token_list_set_value ::
        JSRef DOMSettableTokenList -> JSString -> IO ()
 
domSettableTokenListSetValue ::
                             (IsDOMSettableTokenList self, ToJSString val) =>
                               self -> val -> IO ()
domSettableTokenListSetValue self val
  = ghcjs_dom_dom_settable_token_list_set_value
      (unDOMSettableTokenList (toDOMSettableTokenList self))
      (toJSString val)
 
foreign import javascript unsafe "$1[\"value\"]"
        ghcjs_dom_dom_settable_token_list_get_value ::
        JSRef DOMSettableTokenList -> IO JSString
 
domSettableTokenListGetValue ::
                             (IsDOMSettableTokenList self, FromJSString result) =>
                               self -> IO result
domSettableTokenListGetValue self
  = fromJSString <$>
      (ghcjs_dom_dom_settable_token_list_get_value
         (unDOMSettableTokenList (toDOMSettableTokenList self)))
#else
module GHCJS.DOM.DOMSettableTokenList (
  module Graphics.UI.Gtk.WebKit.DOM.DOMSettableTokenList
  ) where
import Graphics.UI.Gtk.WebKit.DOM.DOMSettableTokenList
#endif
