# Module Documentation

## Module Data.DOM.Simple.Ajax

### Values

    makeXMLHttpRequest :: forall eff. Eff (dom :: DOM | eff) XMLHttpRequest

    open :: forall eff. String -> String -> XMLHttpRequest -> Eff (dom :: DOM | eff) Unit

    responseText :: forall eff. XMLHttpRequest -> Eff (dom :: DOM | eff) String

    send :: forall eff. XMLHttpRequest -> Eff (dom :: DOM | eff) Unit

    sendWithPayload :: forall eff a. a -> XMLHttpRequest -> Eff (dom :: DOM | eff) Unit

    setRequestHeader :: forall eff. String -> String -> XMLHttpRequest -> Eff (dom :: DOM | eff) Unit


## Module Data.DOM.Simple.Element

### Type Classes

    class Element b where
      getElementById :: forall eff. String -> b -> Eff (dom :: DOM | eff) HTMLElement
      getElementsByClassName :: forall eff. String -> b -> Eff (dom :: DOM | eff) [HTMLElement]
      getElementsByName :: forall eff. String -> b -> Eff (dom :: DOM | eff) [HTMLElement]
      querySelector :: forall eff. String -> b -> Eff (dom :: DOM | eff) HTMLElement
      querySelectorAll :: forall eff. String -> b -> Eff (dom :: DOM | eff) [HTMLElement]
      getAttribute :: forall eff. String -> b -> Eff (dom :: DOM | eff) String
      setAttribute :: forall eff. String -> String -> b -> Eff (dom :: DOM | eff) Unit
      hasAttribute :: forall eff. String -> b -> Eff (dom :: DOM | eff) Boolean
      removeAttribute :: forall eff. String -> b -> Eff (dom :: DOM | eff) Unit
      children :: forall eff. b -> Eff (dom :: DOM | eff) [HTMLElement]
      innerHTML :: forall eff. b -> Eff (dom :: DOM | eff) String
      setInnerHTML :: forall eff. String -> b -> Eff (dom :: DOM | eff) Unit
      textContent :: forall eff. b -> Eff (dom :: DOM | eff) String
      setTextContent :: forall eff. String -> b -> Eff (dom :: DOM | eff) Unit
      contentWindow :: forall eff. b -> Eff (dom :: DOM | eff) HTMLWindow


### Type Class Instances

    instance htmlDocumentElement :: Element HTMLDocument

    instance htmlElement :: Element HTMLElement


### Values

    getDocument :: forall eff. HTMLWindow -> Eff (dom :: DOM | eff) HTMLDocument

    globalWindow :: HTMLWindow


## Module Data.DOM.Simple.Encode

### Values

    decodeURI :: String -> String

    decodeURIComponent :: String -> String

    encodeURI :: String -> String

    encodeURIComponent :: String -> String

    paramatize :: forall a. a -> String

    toJsonString :: forall eff a. a -> Eff (dom :: DOM | eff) String


## Module Data.DOM.Simple.Events

### Type Classes

    class EventTarget b where
      addEventListener :: forall t ta a. String -> (DOMEvent -> Eff (dom :: DOM | t) a) -> b -> Eff (dom :: DOM | ta) Unit
      removeEventListener :: forall t ta a. String -> (DOMEvent -> Eff (dom :: DOM | t) a) -> b -> Eff (dom :: DOM | ta) Unit


### Type Class Instances

    instance eventTargetHTMLDocument :: EventTarget HTMLDocument

    instance eventTargetHTMLElement :: EventTarget HTMLElement

    instance eventTargetHTMLWindow :: EventTarget HTMLWindow

    instance eventTargetXMLHttpRequest :: EventTarget XMLHttpRequest


### Values

    eventTarget :: forall t a. DOMEvent -> Eff (dom :: DOM | t) a

    preventDefault :: forall t. DOMEvent -> Eff (dom :: DOM | t) Unit

    ready :: forall t ta. Eff (dom :: DOM | t) Unit -> Eff (dom :: DOM | ta) Unit


## Module Data.DOM.Simple.Types

### Types

    data DOM :: !

    data DOMEvent :: *

    data HTMLDocument :: *

    data HTMLElement :: *

    data HTMLWindow :: *

    data JavascriptContext :: *

    data XMLHttpRequest :: *


## Module Data.DOM.Simple.Unsafe.Element

### Values

    unsafeChildren :: forall eff a. a -> Eff (dom :: DOM | eff) [HTMLElement]

    unsafeContentWindow :: forall eff a. a -> Eff (dom :: DOM | eff) HTMLWindow

    unsafeGetAttribute :: forall eff a. String -> a -> Eff (dom :: DOM | eff) String

    unsafeGetElementById :: forall eff a. String -> a -> Eff (dom :: DOM | eff) HTMLElement

    unsafeGetElementsByClassName :: forall eff a. String -> a -> Eff (dom :: DOM | eff) [HTMLElement]

    unsafeGetElementsByName :: forall eff a. String -> a -> Eff (dom :: DOM | eff) [HTMLElement]

    unsafeHasAttribute :: forall eff a. String -> a -> Eff (dom :: DOM | eff) Boolean

    unsafeInnerHTML :: forall eff a. a -> Eff (dom :: DOM | eff) String

    unsafeQuerySelector :: forall eff a. String -> a -> Eff (dom :: DOM | eff) HTMLElement

    unsafeQuerySelectorAll :: forall eff a. String -> a -> Eff (dom :: DOM | eff) [HTMLElement]

    unsafeRemoveAttribute :: forall eff a. String -> a -> Eff (dom :: DOM | eff) Unit

    unsafeSetAttribute :: forall eff a. String -> String -> a -> Eff (dom :: DOM | eff) Unit

    unsafeSetInnerHTML :: forall eff a. String -> a -> Eff (dom :: DOM | eff) Unit

    unsafeSetTextContent :: forall eff a. String -> a -> Eff (dom :: DOM | eff) Unit

    unsafeTextContent :: forall eff a. a -> Eff (dom :: DOM | eff) String


## Module Data.DOM.Simple.Unsafe.Events

### Values

    unsafeAddEventListener :: forall t ta a b. String -> (DOMEvent -> Eff (dom :: DOM | t) a) -> b -> Eff (dom :: DOM | ta) Unit

    unsafeRemoveEventListener :: forall t ta a b. String -> (DOMEvent -> Eff (dom :: DOM | t) a) -> b -> Eff (dom :: DOM | ta) Unit