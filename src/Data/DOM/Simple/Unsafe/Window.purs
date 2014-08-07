module Data.DOM.Simple.Unsafe.Window where

import Control.Monad.Eff

import Data.DOM.Simple.Types

foreign import unsafeDocument
  "function unsafeDocument(win) {    \
  \  return function () {            \
  \    return win.document;          \
  \  };                              \
  \}" :: forall eff a. a -> (Eff (dom :: DOM | eff) HTMLDocument)
