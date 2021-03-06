{-# LANGUAGE CPP #-}
#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
{-# LANGUAGE ForeignFunctionInterface, JavaScriptFFI #-}
module GHCJS.DOM.EventTarget
       (ghcjs_dom_event_target_dispatch_event, eventTargetDispatchEvent,
        EventTarget, IsEventTarget, castToEventTarget, gTypeEventTarget,
        toEventTarget)
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
        "($1[\"dispatchEvent\"]($2) ? 1 : 0)"
        ghcjs_dom_event_target_dispatch_event ::
        JSRef EventTarget -> JSRef Event -> IO Bool
 
eventTargetDispatchEvent ::
                         (IsEventTarget self, IsEvent event) =>
                           self -> Maybe event -> IO Bool
eventTargetDispatchEvent self event
  = ghcjs_dom_event_target_dispatch_event
      (unEventTarget (toEventTarget self))
      (maybe jsNull (unEvent . toEvent) event)
#else
module GHCJS.DOM.EventTarget (
  module Graphics.UI.Gtk.WebKit.DOM.EventTarget
  ) where
import Graphics.UI.Gtk.WebKit.DOM.EventTarget
#endif
