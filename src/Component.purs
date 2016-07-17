module Component where

import Prelude

import Data.Int as Int
import Data.Maybe (Maybe(..))
import Data.Tuple (Tuple(..), fst, snd)
import Elm.Dict as Dict
import Elm.Dict (Dict(..))
import React as R
import React.DOM as R
import React.DOM.Props as RP
import Thermite as T
import Unsafe.Coerce (unsafeCoerce)
import Belgium (nativeToString)

data State = State
    { }

instance showState :: Show State where
    show (State s) = nativeToString (State s)

data Action = NoOp

initialState :: State
initialState =
    State { }

render :: T.Render State _ _
render dispatch _ (State state) _ =
    [ R.h1 [ ] [ R.text "Test" ] ]

performAction (NoOp) _ _ update =
    update $ \(State state) -> (State state)

spec :: T.Spec _ State _ Action
spec =
    T.simpleSpec performAction render
