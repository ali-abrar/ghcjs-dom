{-# LANGUAGE CPP #-}
#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
{-# LANGUAGE ForeignFunctionInterface, JavaScriptFFI #-}
module GHCJS.DOM.DocumentType
       (ghcjs_dom_document_type_get_name, documentTypeGetName,
        ghcjs_dom_document_type_get_entities, documentTypeGetEntities,
        ghcjs_dom_document_type_get_notations, documentTypeGetNotations,
        ghcjs_dom_document_type_get_public_id, documentTypeGetPublicId,
        ghcjs_dom_document_type_get_system_id, documentTypeGetSystemId,
        ghcjs_dom_document_type_get_internal_subset,
        documentTypeGetInternalSubset, DocumentType, IsDocumentType,
        castToDocumentType, gTypeDocumentType, toDocumentType)
       where
import GHCJS.Types
import GHCJS.Foreign
import GHCJS.Marshal
import Data.Int
import Data.Word
import GHCJS.DOM.Types
import Control.Applicative ((<$>))
import GHCJS.DOM.EventM

 
foreign import javascript unsafe "$1[\"name\"]"
        ghcjs_dom_document_type_get_name ::
        JSRef DocumentType -> IO JSString
 
documentTypeGetName ::
                    (IsDocumentType self, FromJSString result) => self -> IO result
documentTypeGetName self
  = fromJSString <$>
      (ghcjs_dom_document_type_get_name
         (unDocumentType (toDocumentType self)))
 
foreign import javascript unsafe "$1[\"entities\"]"
        ghcjs_dom_document_type_get_entities ::
        JSRef DocumentType -> IO (JSRef NamedNodeMap)
 
documentTypeGetEntities ::
                        (IsDocumentType self) => self -> IO (Maybe NamedNodeMap)
documentTypeGetEntities self
  = fmap NamedNodeMap . maybeJSNull <$>
      (ghcjs_dom_document_type_get_entities
         (unDocumentType (toDocumentType self)))
 
foreign import javascript unsafe "$1[\"notations\"]"
        ghcjs_dom_document_type_get_notations ::
        JSRef DocumentType -> IO (JSRef NamedNodeMap)
 
documentTypeGetNotations ::
                         (IsDocumentType self) => self -> IO (Maybe NamedNodeMap)
documentTypeGetNotations self
  = fmap NamedNodeMap . maybeJSNull <$>
      (ghcjs_dom_document_type_get_notations
         (unDocumentType (toDocumentType self)))
 
foreign import javascript unsafe "$1[\"publicId\"]"
        ghcjs_dom_document_type_get_public_id ::
        JSRef DocumentType -> IO JSString
 
documentTypeGetPublicId ::
                        (IsDocumentType self, FromJSString result) => self -> IO result
documentTypeGetPublicId self
  = fromJSString <$>
      (ghcjs_dom_document_type_get_public_id
         (unDocumentType (toDocumentType self)))
 
foreign import javascript unsafe "$1[\"systemId\"]"
        ghcjs_dom_document_type_get_system_id ::
        JSRef DocumentType -> IO JSString
 
documentTypeGetSystemId ::
                        (IsDocumentType self, FromJSString result) => self -> IO result
documentTypeGetSystemId self
  = fromJSString <$>
      (ghcjs_dom_document_type_get_system_id
         (unDocumentType (toDocumentType self)))
 
foreign import javascript unsafe "$1[\"internalSubset\"]"
        ghcjs_dom_document_type_get_internal_subset ::
        JSRef DocumentType -> IO JSString
 
documentTypeGetInternalSubset ::
                              (IsDocumentType self, FromJSString result) => self -> IO result
documentTypeGetInternalSubset self
  = fromJSString <$>
      (ghcjs_dom_document_type_get_internal_subset
         (unDocumentType (toDocumentType self)))
#else
module GHCJS.DOM.DocumentType (
  module Graphics.UI.Gtk.WebKit.DOM.DocumentType
  ) where
import Graphics.UI.Gtk.WebKit.DOM.DocumentType
#endif
