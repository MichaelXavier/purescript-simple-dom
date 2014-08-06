module Data.DOM.Simple.Ajax where

import Control.Monad.Eff
import Data.DOM.Simple.Element
import Data.DOM.Simple.Events

foreign import data XMLHttpRequest :: *

foreign import makeXMLHttpRequest
  "function makeXMLHttpRequest() {  \
  \  return function() {            \
  \    return new XMLHttpRequest(); \
  \  }                              \
  \}" :: forall eff. (Eff (dom :: DOM | eff) XMLHttpRequest)

foreign import open
  "function open(method) {                \
  \  return function(url) {               \
  \    return function (obj) {            \
  \      return function () {             \
  \         obj.open(method, url);        \
  \      };                               \
  \    };                                 \
  \  };                                   \
  \}" :: forall eff. String -> String -> XMLHttpRequest -> (Eff (dom :: DOM | eff) Unit)

foreign import send
  "function send(obj) {     \
  \  return function () {   \
  \    obj.send();          \
  \  };                     \
  \}" :: forall eff. XMLHttpRequest -> (Eff (dom :: DOM | eff) Unit)

foreign import setRequestHeader
  "function setRequestHeader(key) {           \
  \   return function (value) {               \
  \     return function (obj) {               \
  \       return function () {                \
  \         obj.setRequestHeader(key, value); \
  \       }                                   \
  \     }                                     \
  \   }                                       \
  \}" :: forall eff. String -> String -> XMLHttpRequest -> (Eff (dom :: DOM | eff) Unit)
