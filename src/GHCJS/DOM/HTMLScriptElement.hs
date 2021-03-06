{-# LANGUAGE CPP #-}
#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
{-# LANGUAGE ForeignFunctionInterface, JavaScriptFFI #-}
module GHCJS.DOM.HTMLScriptElement
       (ghcjs_dom_html_script_element_set_text, htmlScriptElementSetText,
        ghcjs_dom_html_script_element_get_text, htmlScriptElementGetText,
        ghcjs_dom_html_script_element_set_html_for,
        htmlScriptElementSetHtmlFor,
        ghcjs_dom_html_script_element_get_html_for,
        htmlScriptElementGetHtmlFor,
        ghcjs_dom_html_script_element_set_event, htmlScriptElementSetEvent,
        ghcjs_dom_html_script_element_get_event, htmlScriptElementGetEvent,
        ghcjs_dom_html_script_element_set_charset,
        htmlScriptElementSetCharset,
        ghcjs_dom_html_script_element_get_charset,
        htmlScriptElementGetCharset,
        ghcjs_dom_html_script_element_set_async, htmlScriptElementSetAsync,
        ghcjs_dom_html_script_element_get_async, htmlScriptElementGetAsync,
        ghcjs_dom_html_script_element_set_defer, htmlScriptElementSetDefer,
        ghcjs_dom_html_script_element_get_defer, htmlScriptElementGetDefer,
        ghcjs_dom_html_script_element_set_src, htmlScriptElementSetSrc,
        ghcjs_dom_html_script_element_get_src, htmlScriptElementGetSrc,
        ghcjs_dom_html_script_element_set_cross_origin,
        htmlScriptElementSetCrossOrigin,
        ghcjs_dom_html_script_element_get_cross_origin,
        htmlScriptElementGetCrossOrigin,
        ghcjs_dom_html_script_element_set_nonce, htmlScriptElementSetNonce,
        ghcjs_dom_html_script_element_get_nonce, htmlScriptElementGetNonce,
        HTMLScriptElement, IsHTMLScriptElement, castToHTMLScriptElement,
        gTypeHTMLScriptElement, toHTMLScriptElement)
       where
import GHCJS.Types
import GHCJS.Foreign
import GHCJS.Marshal
import Data.Int
import Data.Word
import GHCJS.DOM.Types
import Control.Applicative ((<$>))
import GHCJS.DOM.EventM

 
foreign import javascript unsafe "$1[\"text\"] = $2;"
        ghcjs_dom_html_script_element_set_text ::
        JSRef HTMLScriptElement -> JSString -> IO ()
 
htmlScriptElementSetText ::
                         (IsHTMLScriptElement self, ToJSString val) => self -> val -> IO ()
htmlScriptElementSetText self val
  = ghcjs_dom_html_script_element_set_text
      (unHTMLScriptElement (toHTMLScriptElement self))
      (toJSString val)
 
foreign import javascript unsafe "$1[\"text\"]"
        ghcjs_dom_html_script_element_get_text ::
        JSRef HTMLScriptElement -> IO JSString
 
htmlScriptElementGetText ::
                         (IsHTMLScriptElement self, FromJSString result) =>
                           self -> IO result
htmlScriptElementGetText self
  = fromJSString <$>
      (ghcjs_dom_html_script_element_get_text
         (unHTMLScriptElement (toHTMLScriptElement self)))
 
foreign import javascript unsafe "$1[\"htmlFor\"] = $2;"
        ghcjs_dom_html_script_element_set_html_for ::
        JSRef HTMLScriptElement -> JSString -> IO ()
 
htmlScriptElementSetHtmlFor ::
                            (IsHTMLScriptElement self, ToJSString val) => self -> val -> IO ()
htmlScriptElementSetHtmlFor self val
  = ghcjs_dom_html_script_element_set_html_for
      (unHTMLScriptElement (toHTMLScriptElement self))
      (toJSString val)
 
foreign import javascript unsafe "$1[\"htmlFor\"]"
        ghcjs_dom_html_script_element_get_html_for ::
        JSRef HTMLScriptElement -> IO JSString
 
htmlScriptElementGetHtmlFor ::
                            (IsHTMLScriptElement self, FromJSString result) =>
                              self -> IO result
htmlScriptElementGetHtmlFor self
  = fromJSString <$>
      (ghcjs_dom_html_script_element_get_html_for
         (unHTMLScriptElement (toHTMLScriptElement self)))
 
foreign import javascript unsafe "$1[\"event\"] = $2;"
        ghcjs_dom_html_script_element_set_event ::
        JSRef HTMLScriptElement -> JSString -> IO ()
 
htmlScriptElementSetEvent ::
                          (IsHTMLScriptElement self, ToJSString val) => self -> val -> IO ()
htmlScriptElementSetEvent self val
  = ghcjs_dom_html_script_element_set_event
      (unHTMLScriptElement (toHTMLScriptElement self))
      (toJSString val)
 
foreign import javascript unsafe "$1[\"event\"]"
        ghcjs_dom_html_script_element_get_event ::
        JSRef HTMLScriptElement -> IO JSString
 
htmlScriptElementGetEvent ::
                          (IsHTMLScriptElement self, FromJSString result) =>
                            self -> IO result
htmlScriptElementGetEvent self
  = fromJSString <$>
      (ghcjs_dom_html_script_element_get_event
         (unHTMLScriptElement (toHTMLScriptElement self)))
 
foreign import javascript unsafe "$1[\"charset\"] = $2;"
        ghcjs_dom_html_script_element_set_charset ::
        JSRef HTMLScriptElement -> JSString -> IO ()
 
htmlScriptElementSetCharset ::
                            (IsHTMLScriptElement self, ToJSString val) => self -> val -> IO ()
htmlScriptElementSetCharset self val
  = ghcjs_dom_html_script_element_set_charset
      (unHTMLScriptElement (toHTMLScriptElement self))
      (toJSString val)
 
foreign import javascript unsafe "$1[\"charset\"]"
        ghcjs_dom_html_script_element_get_charset ::
        JSRef HTMLScriptElement -> IO JSString
 
htmlScriptElementGetCharset ::
                            (IsHTMLScriptElement self, FromJSString result) =>
                              self -> IO result
htmlScriptElementGetCharset self
  = fromJSString <$>
      (ghcjs_dom_html_script_element_get_charset
         (unHTMLScriptElement (toHTMLScriptElement self)))
 
foreign import javascript unsafe "$1[\"async\"] = $2;"
        ghcjs_dom_html_script_element_set_async ::
        JSRef HTMLScriptElement -> Bool -> IO ()
 
htmlScriptElementSetAsync ::
                          (IsHTMLScriptElement self) => self -> Bool -> IO ()
htmlScriptElementSetAsync self val
  = ghcjs_dom_html_script_element_set_async
      (unHTMLScriptElement (toHTMLScriptElement self))
      val
 
foreign import javascript unsafe "($1[\"async\"] ? 1 : 0)"
        ghcjs_dom_html_script_element_get_async ::
        JSRef HTMLScriptElement -> IO Bool
 
htmlScriptElementGetAsync ::
                          (IsHTMLScriptElement self) => self -> IO Bool
htmlScriptElementGetAsync self
  = ghcjs_dom_html_script_element_get_async
      (unHTMLScriptElement (toHTMLScriptElement self))
 
foreign import javascript unsafe "$1[\"defer\"] = $2;"
        ghcjs_dom_html_script_element_set_defer ::
        JSRef HTMLScriptElement -> Bool -> IO ()
 
htmlScriptElementSetDefer ::
                          (IsHTMLScriptElement self) => self -> Bool -> IO ()
htmlScriptElementSetDefer self val
  = ghcjs_dom_html_script_element_set_defer
      (unHTMLScriptElement (toHTMLScriptElement self))
      val
 
foreign import javascript unsafe "($1[\"defer\"] ? 1 : 0)"
        ghcjs_dom_html_script_element_get_defer ::
        JSRef HTMLScriptElement -> IO Bool
 
htmlScriptElementGetDefer ::
                          (IsHTMLScriptElement self) => self -> IO Bool
htmlScriptElementGetDefer self
  = ghcjs_dom_html_script_element_get_defer
      (unHTMLScriptElement (toHTMLScriptElement self))
 
foreign import javascript unsafe "$1[\"src\"] = $2;"
        ghcjs_dom_html_script_element_set_src ::
        JSRef HTMLScriptElement -> JSString -> IO ()
 
htmlScriptElementSetSrc ::
                        (IsHTMLScriptElement self, ToJSString val) => self -> val -> IO ()
htmlScriptElementSetSrc self val
  = ghcjs_dom_html_script_element_set_src
      (unHTMLScriptElement (toHTMLScriptElement self))
      (toJSString val)
 
foreign import javascript unsafe "$1[\"src\"]"
        ghcjs_dom_html_script_element_get_src ::
        JSRef HTMLScriptElement -> IO JSString
 
htmlScriptElementGetSrc ::
                        (IsHTMLScriptElement self, FromJSString result) =>
                          self -> IO result
htmlScriptElementGetSrc self
  = fromJSString <$>
      (ghcjs_dom_html_script_element_get_src
         (unHTMLScriptElement (toHTMLScriptElement self)))
 
foreign import javascript unsafe "$1[\"crossOrigin\"] = $2;"
        ghcjs_dom_html_script_element_set_cross_origin ::
        JSRef HTMLScriptElement -> JSString -> IO ()
 
htmlScriptElementSetCrossOrigin ::
                                (IsHTMLScriptElement self, ToJSString val) => self -> val -> IO ()
htmlScriptElementSetCrossOrigin self val
  = ghcjs_dom_html_script_element_set_cross_origin
      (unHTMLScriptElement (toHTMLScriptElement self))
      (toJSString val)
 
foreign import javascript unsafe "$1[\"crossOrigin\"]"
        ghcjs_dom_html_script_element_get_cross_origin ::
        JSRef HTMLScriptElement -> IO JSString
 
htmlScriptElementGetCrossOrigin ::
                                (IsHTMLScriptElement self, FromJSString result) =>
                                  self -> IO result
htmlScriptElementGetCrossOrigin self
  = fromJSString <$>
      (ghcjs_dom_html_script_element_get_cross_origin
         (unHTMLScriptElement (toHTMLScriptElement self)))
 
foreign import javascript unsafe "$1[\"nonce\"] = $2;"
        ghcjs_dom_html_script_element_set_nonce ::
        JSRef HTMLScriptElement -> JSString -> IO ()
 
htmlScriptElementSetNonce ::
                          (IsHTMLScriptElement self, ToJSString val) => self -> val -> IO ()
htmlScriptElementSetNonce self val
  = ghcjs_dom_html_script_element_set_nonce
      (unHTMLScriptElement (toHTMLScriptElement self))
      (toJSString val)
 
foreign import javascript unsafe "$1[\"nonce\"]"
        ghcjs_dom_html_script_element_get_nonce ::
        JSRef HTMLScriptElement -> IO JSString
 
htmlScriptElementGetNonce ::
                          (IsHTMLScriptElement self, FromJSString result) =>
                            self -> IO result
htmlScriptElementGetNonce self
  = fromJSString <$>
      (ghcjs_dom_html_script_element_get_nonce
         (unHTMLScriptElement (toHTMLScriptElement self)))
#else
module GHCJS.DOM.HTMLScriptElement (
  module Graphics.UI.Gtk.WebKit.DOM.HTMLScriptElement
  ) where
import Graphics.UI.Gtk.WebKit.DOM.HTMLScriptElement
#endif
