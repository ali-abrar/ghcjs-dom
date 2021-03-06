{-# LANGUAGE CPP #-}
#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
{-# LANGUAGE ForeignFunctionInterface, JavaScriptFFI #-}
module GHCJS.DOM.DOMImplementation
       (ghcjs_dom_dom_implementation_has_feature,
        domImplementationHasFeature,
        ghcjs_dom_dom_implementation_create_document_type,
        domImplementationCreateDocumentType,
        ghcjs_dom_dom_implementation_create_document,
        domImplementationCreateDocument,
        ghcjs_dom_dom_implementation_create_css_style_sheet,
        domImplementationCreateCSSStyleSheet,
        ghcjs_dom_dom_implementation_create_html_document,
        domImplementationCreateHTMLDocument, DOMImplementation,
        IsDOMImplementation, castToDOMImplementation,
        gTypeDOMImplementation, toDOMImplementation)
       where
import GHCJS.Types
import GHCJS.Foreign
import GHCJS.Marshal
import Data.Int
import Data.Word
import GHCJS.DOM.Types
import Control.Applicative ((<$>))
import GHCJS.DOM.EventM

 
foreign import javascript unsafe
        "($1[\"hasFeature\"]($2,\n$3) ? 1 : 0)"
        ghcjs_dom_dom_implementation_has_feature ::
        JSRef DOMImplementation -> JSString -> JSString -> IO Bool
 
domImplementationHasFeature ::
                            (IsDOMImplementation self, ToJSString feature,
                             ToJSString version) =>
                              self -> feature -> version -> IO Bool
domImplementationHasFeature self feature version
  = ghcjs_dom_dom_implementation_has_feature
      (unDOMImplementation (toDOMImplementation self))
      (toJSString feature)
      (toJSString version)
 
foreign import javascript unsafe
        "$1[\"createDocumentType\"]($2, $3,\n$4)"
        ghcjs_dom_dom_implementation_create_document_type ::
        JSRef DOMImplementation ->
          JSString -> JSString -> JSString -> IO (JSRef DocumentType)
 
domImplementationCreateDocumentType ::
                                    (IsDOMImplementation self, ToJSString qualifiedName,
                                     ToJSString publicId, ToJSString systemId) =>
                                      self ->
                                        qualifiedName ->
                                          publicId -> systemId -> IO (Maybe DocumentType)
domImplementationCreateDocumentType self qualifiedName publicId
  systemId
  = fmap DocumentType . maybeJSNull <$>
      (ghcjs_dom_dom_implementation_create_document_type
         (unDOMImplementation (toDOMImplementation self))
         (toJSString qualifiedName)
         (toJSString publicId)
         (toJSString systemId))
 
foreign import javascript unsafe
        "$1[\"createDocument\"]($2, $3, $4)"
        ghcjs_dom_dom_implementation_create_document ::
        JSRef DOMImplementation ->
          JSString -> JSString -> JSRef DocumentType -> IO (JSRef Document)
 
domImplementationCreateDocument ::
                                (IsDOMImplementation self, ToJSString namespaceURI,
                                 ToJSString qualifiedName, IsDocumentType doctype) =>
                                  self ->
                                    namespaceURI ->
                                      qualifiedName -> Maybe doctype -> IO (Maybe Document)
domImplementationCreateDocument self namespaceURI qualifiedName
  doctype
  = fmap Document . maybeJSNull <$>
      (ghcjs_dom_dom_implementation_create_document
         (unDOMImplementation (toDOMImplementation self))
         (toJSString namespaceURI)
         (toJSString qualifiedName)
         (maybe jsNull (unDocumentType . toDocumentType) doctype))
 
foreign import javascript unsafe
        "$1[\"createCSSStyleSheet\"]($2,\n$3)"
        ghcjs_dom_dom_implementation_create_css_style_sheet ::
        JSRef DOMImplementation ->
          JSString -> JSString -> IO (JSRef CSSStyleSheet)
 
domImplementationCreateCSSStyleSheet ::
                                     (IsDOMImplementation self, ToJSString title,
                                      ToJSString media) =>
                                       self -> title -> media -> IO (Maybe CSSStyleSheet)
domImplementationCreateCSSStyleSheet self title media
  = fmap CSSStyleSheet . maybeJSNull <$>
      (ghcjs_dom_dom_implementation_create_css_style_sheet
         (unDOMImplementation (toDOMImplementation self))
         (toJSString title)
         (toJSString media))
 
foreign import javascript unsafe "$1[\"createHTMLDocument\"]($2)"
        ghcjs_dom_dom_implementation_create_html_document ::
        JSRef DOMImplementation -> JSString -> IO (JSRef HTMLDocument)
 
domImplementationCreateHTMLDocument ::
                                    (IsDOMImplementation self, ToJSString title) =>
                                      self -> title -> IO (Maybe HTMLDocument)
domImplementationCreateHTMLDocument self title
  = fmap HTMLDocument . maybeJSNull <$>
      (ghcjs_dom_dom_implementation_create_html_document
         (unDOMImplementation (toDOMImplementation self))
         (toJSString title))
#else
module GHCJS.DOM.DOMImplementation (
  module Graphics.UI.Gtk.WebKit.DOM.DOMImplementation
  ) where
import Graphics.UI.Gtk.WebKit.DOM.DOMImplementation
#endif
