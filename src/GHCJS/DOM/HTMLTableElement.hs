{-# LANGUAGE CPP #-}
#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
{-# LANGUAGE ForeignFunctionInterface, JavaScriptFFI #-}
module GHCJS.DOM.HTMLTableElement
       (ghcjs_dom_html_table_element_create_t_head,
        htmlTableElementCreateTHead,
        ghcjs_dom_html_table_element_delete_t_head,
        htmlTableElementDeleteTHead,
        ghcjs_dom_html_table_element_create_t_foot,
        htmlTableElementCreateTFoot,
        ghcjs_dom_html_table_element_delete_t_foot,
        htmlTableElementDeleteTFoot,
        ghcjs_dom_html_table_element_create_t_body,
        htmlTableElementCreateTBody,
        ghcjs_dom_html_table_element_create_caption,
        htmlTableElementCreateCaption,
        ghcjs_dom_html_table_element_delete_caption,
        htmlTableElementDeleteCaption,
        ghcjs_dom_html_table_element_insert_row, htmlTableElementInsertRow,
        ghcjs_dom_html_table_element_delete_row, htmlTableElementDeleteRow,
        ghcjs_dom_html_table_element_set_caption,
        htmlTableElementSetCaption,
        ghcjs_dom_html_table_element_get_caption,
        htmlTableElementGetCaption,
        ghcjs_dom_html_table_element_set_t_head, htmlTableElementSetTHead,
        ghcjs_dom_html_table_element_get_t_head, htmlTableElementGetTHead,
        ghcjs_dom_html_table_element_set_t_foot, htmlTableElementSetTFoot,
        ghcjs_dom_html_table_element_get_t_foot, htmlTableElementGetTFoot,
        ghcjs_dom_html_table_element_get_rows, htmlTableElementGetRows,
        ghcjs_dom_html_table_element_get_t_bodies,
        htmlTableElementGetTBodies, ghcjs_dom_html_table_element_set_align,
        htmlTableElementSetAlign, ghcjs_dom_html_table_element_get_align,
        htmlTableElementGetAlign,
        ghcjs_dom_html_table_element_set_bg_color,
        htmlTableElementSetBgColor,
        ghcjs_dom_html_table_element_get_bg_color,
        htmlTableElementGetBgColor,
        ghcjs_dom_html_table_element_set_border, htmlTableElementSetBorder,
        ghcjs_dom_html_table_element_get_border, htmlTableElementGetBorder,
        ghcjs_dom_html_table_element_set_cell_padding,
        htmlTableElementSetCellPadding,
        ghcjs_dom_html_table_element_get_cell_padding,
        htmlTableElementGetCellPadding,
        ghcjs_dom_html_table_element_set_cell_spacing,
        htmlTableElementSetCellSpacing,
        ghcjs_dom_html_table_element_get_cell_spacing,
        htmlTableElementGetCellSpacing,
        ghcjs_dom_html_table_element_set_frame, htmlTableElementSetFrame,
        ghcjs_dom_html_table_element_get_frame, htmlTableElementGetFrame,
        ghcjs_dom_html_table_element_set_rules, htmlTableElementSetRules,
        ghcjs_dom_html_table_element_get_rules, htmlTableElementGetRules,
        ghcjs_dom_html_table_element_set_summary,
        htmlTableElementSetSummary,
        ghcjs_dom_html_table_element_get_summary,
        htmlTableElementGetSummary, ghcjs_dom_html_table_element_set_width,
        htmlTableElementSetWidth, ghcjs_dom_html_table_element_get_width,
        htmlTableElementGetWidth, HTMLTableElement, IsHTMLTableElement,
        castToHTMLTableElement, gTypeHTMLTableElement, toHTMLTableElement)
       where
import GHCJS.Types
import GHCJS.Foreign
import GHCJS.Marshal
import Data.Int
import Data.Word
import GHCJS.DOM.Types
import Control.Applicative ((<$>))
import GHCJS.DOM.EventM

 
foreign import javascript unsafe "$1[\"createTHead\"]()"
        ghcjs_dom_html_table_element_create_t_head ::
        JSRef HTMLTableElement -> IO (JSRef HTMLElement)
 
htmlTableElementCreateTHead ::
                            (IsHTMLTableElement self) => self -> IO (Maybe HTMLElement)
htmlTableElementCreateTHead self
  = fmap HTMLElement . maybeJSNull <$>
      (ghcjs_dom_html_table_element_create_t_head
         (unHTMLTableElement (toHTMLTableElement self)))
 
foreign import javascript unsafe "$1[\"deleteTHead\"]()"
        ghcjs_dom_html_table_element_delete_t_head ::
        JSRef HTMLTableElement -> IO ()
 
htmlTableElementDeleteTHead ::
                            (IsHTMLTableElement self) => self -> IO ()
htmlTableElementDeleteTHead self
  = ghcjs_dom_html_table_element_delete_t_head
      (unHTMLTableElement (toHTMLTableElement self))
 
foreign import javascript unsafe "$1[\"createTFoot\"]()"
        ghcjs_dom_html_table_element_create_t_foot ::
        JSRef HTMLTableElement -> IO (JSRef HTMLElement)
 
htmlTableElementCreateTFoot ::
                            (IsHTMLTableElement self) => self -> IO (Maybe HTMLElement)
htmlTableElementCreateTFoot self
  = fmap HTMLElement . maybeJSNull <$>
      (ghcjs_dom_html_table_element_create_t_foot
         (unHTMLTableElement (toHTMLTableElement self)))
 
foreign import javascript unsafe "$1[\"deleteTFoot\"]()"
        ghcjs_dom_html_table_element_delete_t_foot ::
        JSRef HTMLTableElement -> IO ()
 
htmlTableElementDeleteTFoot ::
                            (IsHTMLTableElement self) => self -> IO ()
htmlTableElementDeleteTFoot self
  = ghcjs_dom_html_table_element_delete_t_foot
      (unHTMLTableElement (toHTMLTableElement self))
 
foreign import javascript unsafe "$1[\"createTBody\"]()"
        ghcjs_dom_html_table_element_create_t_body ::
        JSRef HTMLTableElement -> IO (JSRef HTMLElement)
 
htmlTableElementCreateTBody ::
                            (IsHTMLTableElement self) => self -> IO (Maybe HTMLElement)
htmlTableElementCreateTBody self
  = fmap HTMLElement . maybeJSNull <$>
      (ghcjs_dom_html_table_element_create_t_body
         (unHTMLTableElement (toHTMLTableElement self)))
 
foreign import javascript unsafe "$1[\"createCaption\"]()"
        ghcjs_dom_html_table_element_create_caption ::
        JSRef HTMLTableElement -> IO (JSRef HTMLElement)
 
htmlTableElementCreateCaption ::
                              (IsHTMLTableElement self) => self -> IO (Maybe HTMLElement)
htmlTableElementCreateCaption self
  = fmap HTMLElement . maybeJSNull <$>
      (ghcjs_dom_html_table_element_create_caption
         (unHTMLTableElement (toHTMLTableElement self)))
 
foreign import javascript unsafe "$1[\"deleteCaption\"]()"
        ghcjs_dom_html_table_element_delete_caption ::
        JSRef HTMLTableElement -> IO ()
 
htmlTableElementDeleteCaption ::
                              (IsHTMLTableElement self) => self -> IO ()
htmlTableElementDeleteCaption self
  = ghcjs_dom_html_table_element_delete_caption
      (unHTMLTableElement (toHTMLTableElement self))
 
foreign import javascript unsafe "$1[\"insertRow\"]($2)"
        ghcjs_dom_html_table_element_insert_row ::
        JSRef HTMLTableElement -> Int -> IO (JSRef HTMLElement)
 
htmlTableElementInsertRow ::
                          (IsHTMLTableElement self) => self -> Int -> IO (Maybe HTMLElement)
htmlTableElementInsertRow self index
  = fmap HTMLElement . maybeJSNull <$>
      (ghcjs_dom_html_table_element_insert_row
         (unHTMLTableElement (toHTMLTableElement self))
         index)
 
foreign import javascript unsafe "$1[\"deleteRow\"]($2)"
        ghcjs_dom_html_table_element_delete_row ::
        JSRef HTMLTableElement -> Int -> IO ()
 
htmlTableElementDeleteRow ::
                          (IsHTMLTableElement self) => self -> Int -> IO ()
htmlTableElementDeleteRow self index
  = ghcjs_dom_html_table_element_delete_row
      (unHTMLTableElement (toHTMLTableElement self))
      index
 
foreign import javascript unsafe "$1[\"caption\"] = $2;"
        ghcjs_dom_html_table_element_set_caption ::
        JSRef HTMLTableElement -> JSRef HTMLTableCaptionElement -> IO ()
 
htmlTableElementSetCaption ::
                           (IsHTMLTableElement self, IsHTMLTableCaptionElement val) =>
                             self -> Maybe val -> IO ()
htmlTableElementSetCaption self val
  = ghcjs_dom_html_table_element_set_caption
      (unHTMLTableElement (toHTMLTableElement self))
      (maybe jsNull
         (unHTMLTableCaptionElement . toHTMLTableCaptionElement)
         val)
 
foreign import javascript unsafe "$1[\"caption\"]"
        ghcjs_dom_html_table_element_get_caption ::
        JSRef HTMLTableElement -> IO (JSRef HTMLTableCaptionElement)
 
htmlTableElementGetCaption ::
                           (IsHTMLTableElement self) =>
                             self -> IO (Maybe HTMLTableCaptionElement)
htmlTableElementGetCaption self
  = fmap HTMLTableCaptionElement . maybeJSNull <$>
      (ghcjs_dom_html_table_element_get_caption
         (unHTMLTableElement (toHTMLTableElement self)))
 
foreign import javascript unsafe "$1[\"tHead\"] = $2;"
        ghcjs_dom_html_table_element_set_t_head ::
        JSRef HTMLTableElement -> JSRef HTMLTableSectionElement -> IO ()
 
htmlTableElementSetTHead ::
                         (IsHTMLTableElement self, IsHTMLTableSectionElement val) =>
                           self -> Maybe val -> IO ()
htmlTableElementSetTHead self val
  = ghcjs_dom_html_table_element_set_t_head
      (unHTMLTableElement (toHTMLTableElement self))
      (maybe jsNull
         (unHTMLTableSectionElement . toHTMLTableSectionElement)
         val)
 
foreign import javascript unsafe "$1[\"tHead\"]"
        ghcjs_dom_html_table_element_get_t_head ::
        JSRef HTMLTableElement -> IO (JSRef HTMLTableSectionElement)
 
htmlTableElementGetTHead ::
                         (IsHTMLTableElement self) =>
                           self -> IO (Maybe HTMLTableSectionElement)
htmlTableElementGetTHead self
  = fmap HTMLTableSectionElement . maybeJSNull <$>
      (ghcjs_dom_html_table_element_get_t_head
         (unHTMLTableElement (toHTMLTableElement self)))
 
foreign import javascript unsafe "$1[\"tFoot\"] = $2;"
        ghcjs_dom_html_table_element_set_t_foot ::
        JSRef HTMLTableElement -> JSRef HTMLTableSectionElement -> IO ()
 
htmlTableElementSetTFoot ::
                         (IsHTMLTableElement self, IsHTMLTableSectionElement val) =>
                           self -> Maybe val -> IO ()
htmlTableElementSetTFoot self val
  = ghcjs_dom_html_table_element_set_t_foot
      (unHTMLTableElement (toHTMLTableElement self))
      (maybe jsNull
         (unHTMLTableSectionElement . toHTMLTableSectionElement)
         val)
 
foreign import javascript unsafe "$1[\"tFoot\"]"
        ghcjs_dom_html_table_element_get_t_foot ::
        JSRef HTMLTableElement -> IO (JSRef HTMLTableSectionElement)
 
htmlTableElementGetTFoot ::
                         (IsHTMLTableElement self) =>
                           self -> IO (Maybe HTMLTableSectionElement)
htmlTableElementGetTFoot self
  = fmap HTMLTableSectionElement . maybeJSNull <$>
      (ghcjs_dom_html_table_element_get_t_foot
         (unHTMLTableElement (toHTMLTableElement self)))
 
foreign import javascript unsafe "$1[\"rows\"]"
        ghcjs_dom_html_table_element_get_rows ::
        JSRef HTMLTableElement -> IO (JSRef HTMLCollection)
 
htmlTableElementGetRows ::
                        (IsHTMLTableElement self) => self -> IO (Maybe HTMLCollection)
htmlTableElementGetRows self
  = fmap HTMLCollection . maybeJSNull <$>
      (ghcjs_dom_html_table_element_get_rows
         (unHTMLTableElement (toHTMLTableElement self)))
 
foreign import javascript unsafe "$1[\"tBodies\"]"
        ghcjs_dom_html_table_element_get_t_bodies ::
        JSRef HTMLTableElement -> IO (JSRef HTMLCollection)
 
htmlTableElementGetTBodies ::
                           (IsHTMLTableElement self) => self -> IO (Maybe HTMLCollection)
htmlTableElementGetTBodies self
  = fmap HTMLCollection . maybeJSNull <$>
      (ghcjs_dom_html_table_element_get_t_bodies
         (unHTMLTableElement (toHTMLTableElement self)))
 
foreign import javascript unsafe "$1[\"align\"] = $2;"
        ghcjs_dom_html_table_element_set_align ::
        JSRef HTMLTableElement -> JSString -> IO ()
 
htmlTableElementSetAlign ::
                         (IsHTMLTableElement self, ToJSString val) => self -> val -> IO ()
htmlTableElementSetAlign self val
  = ghcjs_dom_html_table_element_set_align
      (unHTMLTableElement (toHTMLTableElement self))
      (toJSString val)
 
foreign import javascript unsafe "$1[\"align\"]"
        ghcjs_dom_html_table_element_get_align ::
        JSRef HTMLTableElement -> IO JSString
 
htmlTableElementGetAlign ::
                         (IsHTMLTableElement self, FromJSString result) => self -> IO result
htmlTableElementGetAlign self
  = fromJSString <$>
      (ghcjs_dom_html_table_element_get_align
         (unHTMLTableElement (toHTMLTableElement self)))
 
foreign import javascript unsafe "$1[\"bgColor\"] = $2;"
        ghcjs_dom_html_table_element_set_bg_color ::
        JSRef HTMLTableElement -> JSString -> IO ()
 
htmlTableElementSetBgColor ::
                           (IsHTMLTableElement self, ToJSString val) => self -> val -> IO ()
htmlTableElementSetBgColor self val
  = ghcjs_dom_html_table_element_set_bg_color
      (unHTMLTableElement (toHTMLTableElement self))
      (toJSString val)
 
foreign import javascript unsafe "$1[\"bgColor\"]"
        ghcjs_dom_html_table_element_get_bg_color ::
        JSRef HTMLTableElement -> IO JSString
 
htmlTableElementGetBgColor ::
                           (IsHTMLTableElement self, FromJSString result) => self -> IO result
htmlTableElementGetBgColor self
  = fromJSString <$>
      (ghcjs_dom_html_table_element_get_bg_color
         (unHTMLTableElement (toHTMLTableElement self)))
 
foreign import javascript unsafe "$1[\"border\"] = $2;"
        ghcjs_dom_html_table_element_set_border ::
        JSRef HTMLTableElement -> JSString -> IO ()
 
htmlTableElementSetBorder ::
                          (IsHTMLTableElement self, ToJSString val) => self -> val -> IO ()
htmlTableElementSetBorder self val
  = ghcjs_dom_html_table_element_set_border
      (unHTMLTableElement (toHTMLTableElement self))
      (toJSString val)
 
foreign import javascript unsafe "$1[\"border\"]"
        ghcjs_dom_html_table_element_get_border ::
        JSRef HTMLTableElement -> IO JSString
 
htmlTableElementGetBorder ::
                          (IsHTMLTableElement self, FromJSString result) => self -> IO result
htmlTableElementGetBorder self
  = fromJSString <$>
      (ghcjs_dom_html_table_element_get_border
         (unHTMLTableElement (toHTMLTableElement self)))
 
foreign import javascript unsafe "$1[\"cellPadding\"] = $2;"
        ghcjs_dom_html_table_element_set_cell_padding ::
        JSRef HTMLTableElement -> JSString -> IO ()
 
htmlTableElementSetCellPadding ::
                               (IsHTMLTableElement self, ToJSString val) => self -> val -> IO ()
htmlTableElementSetCellPadding self val
  = ghcjs_dom_html_table_element_set_cell_padding
      (unHTMLTableElement (toHTMLTableElement self))
      (toJSString val)
 
foreign import javascript unsafe "$1[\"cellPadding\"]"
        ghcjs_dom_html_table_element_get_cell_padding ::
        JSRef HTMLTableElement -> IO JSString
 
htmlTableElementGetCellPadding ::
                               (IsHTMLTableElement self, FromJSString result) => self -> IO result
htmlTableElementGetCellPadding self
  = fromJSString <$>
      (ghcjs_dom_html_table_element_get_cell_padding
         (unHTMLTableElement (toHTMLTableElement self)))
 
foreign import javascript unsafe "$1[\"cellSpacing\"] = $2;"
        ghcjs_dom_html_table_element_set_cell_spacing ::
        JSRef HTMLTableElement -> JSString -> IO ()
 
htmlTableElementSetCellSpacing ::
                               (IsHTMLTableElement self, ToJSString val) => self -> val -> IO ()
htmlTableElementSetCellSpacing self val
  = ghcjs_dom_html_table_element_set_cell_spacing
      (unHTMLTableElement (toHTMLTableElement self))
      (toJSString val)
 
foreign import javascript unsafe "$1[\"cellSpacing\"]"
        ghcjs_dom_html_table_element_get_cell_spacing ::
        JSRef HTMLTableElement -> IO JSString
 
htmlTableElementGetCellSpacing ::
                               (IsHTMLTableElement self, FromJSString result) => self -> IO result
htmlTableElementGetCellSpacing self
  = fromJSString <$>
      (ghcjs_dom_html_table_element_get_cell_spacing
         (unHTMLTableElement (toHTMLTableElement self)))
 
foreign import javascript unsafe "$1[\"frame\"] = $2;"
        ghcjs_dom_html_table_element_set_frame ::
        JSRef HTMLTableElement -> JSString -> IO ()
 
htmlTableElementSetFrame ::
                         (IsHTMLTableElement self, ToJSString val) => self -> val -> IO ()
htmlTableElementSetFrame self val
  = ghcjs_dom_html_table_element_set_frame
      (unHTMLTableElement (toHTMLTableElement self))
      (toJSString val)
 
foreign import javascript unsafe "$1[\"frame\"]"
        ghcjs_dom_html_table_element_get_frame ::
        JSRef HTMLTableElement -> IO JSString
 
htmlTableElementGetFrame ::
                         (IsHTMLTableElement self, FromJSString result) => self -> IO result
htmlTableElementGetFrame self
  = fromJSString <$>
      (ghcjs_dom_html_table_element_get_frame
         (unHTMLTableElement (toHTMLTableElement self)))
 
foreign import javascript unsafe "$1[\"rules\"] = $2;"
        ghcjs_dom_html_table_element_set_rules ::
        JSRef HTMLTableElement -> JSString -> IO ()
 
htmlTableElementSetRules ::
                         (IsHTMLTableElement self, ToJSString val) => self -> val -> IO ()
htmlTableElementSetRules self val
  = ghcjs_dom_html_table_element_set_rules
      (unHTMLTableElement (toHTMLTableElement self))
      (toJSString val)
 
foreign import javascript unsafe "$1[\"rules\"]"
        ghcjs_dom_html_table_element_get_rules ::
        JSRef HTMLTableElement -> IO JSString
 
htmlTableElementGetRules ::
                         (IsHTMLTableElement self, FromJSString result) => self -> IO result
htmlTableElementGetRules self
  = fromJSString <$>
      (ghcjs_dom_html_table_element_get_rules
         (unHTMLTableElement (toHTMLTableElement self)))
 
foreign import javascript unsafe "$1[\"summary\"] = $2;"
        ghcjs_dom_html_table_element_set_summary ::
        JSRef HTMLTableElement -> JSString -> IO ()
 
htmlTableElementSetSummary ::
                           (IsHTMLTableElement self, ToJSString val) => self -> val -> IO ()
htmlTableElementSetSummary self val
  = ghcjs_dom_html_table_element_set_summary
      (unHTMLTableElement (toHTMLTableElement self))
      (toJSString val)
 
foreign import javascript unsafe "$1[\"summary\"]"
        ghcjs_dom_html_table_element_get_summary ::
        JSRef HTMLTableElement -> IO JSString
 
htmlTableElementGetSummary ::
                           (IsHTMLTableElement self, FromJSString result) => self -> IO result
htmlTableElementGetSummary self
  = fromJSString <$>
      (ghcjs_dom_html_table_element_get_summary
         (unHTMLTableElement (toHTMLTableElement self)))
 
foreign import javascript unsafe "$1[\"width\"] = $2;"
        ghcjs_dom_html_table_element_set_width ::
        JSRef HTMLTableElement -> JSString -> IO ()
 
htmlTableElementSetWidth ::
                         (IsHTMLTableElement self, ToJSString val) => self -> val -> IO ()
htmlTableElementSetWidth self val
  = ghcjs_dom_html_table_element_set_width
      (unHTMLTableElement (toHTMLTableElement self))
      (toJSString val)
 
foreign import javascript unsafe "$1[\"width\"]"
        ghcjs_dom_html_table_element_get_width ::
        JSRef HTMLTableElement -> IO JSString
 
htmlTableElementGetWidth ::
                         (IsHTMLTableElement self, FromJSString result) => self -> IO result
htmlTableElementGetWidth self
  = fromJSString <$>
      (ghcjs_dom_html_table_element_get_width
         (unHTMLTableElement (toHTMLTableElement self)))
#else
module GHCJS.DOM.HTMLTableElement (
  module Graphics.UI.Gtk.WebKit.DOM.HTMLTableElement
  ) where
import Graphics.UI.Gtk.WebKit.DOM.HTMLTableElement
#endif
