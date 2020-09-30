-- effect module Learn where { subscription = MySub } exposing (myVal)


module Learn exposing (myVal)

import Platform exposing (Task)
import Task


myVal : Float
myVal =
    42



-- a =
--     Elm.Kernel.Native.alert "Hey"
-- viewApp model =
--     Html.text "hey"
-- type Msg
--     = OnNumber Int
-- initApp _ =
--     ( {}, Cmd.none )
-- updateApp msg model =
--     case msg of
--         OnNumber number ->
--             let
--                 _ =
--                     Debug.log "received" number
--             in
--             ( model, Cmd.none )
-- subscriptionsApp _ =
--     Sub.batch [ mySub OnNumber ]
-- main : Program () {} Msg
-- main =
--     let
--         _ =
--             a
--     in
--     Browser.element
--         { init = initApp
--         , view = viewApp
--         , update = updateApp
--         , subscriptions = subscriptionsApp
--         }
-----
-- SUBSCRIPTIONS
-- mySub : (Int -> msg) -> Sub msg
-- mySub msg =
--     subscription (MySub msg)
-- type MySub msg
--     = MySub (Int -> msg)
-- subMap : (a -> b) -> MySub a -> MySub b
-- subMap func sub =
--     case sub of
--         MySub tagger ->
--             MySub (func << tagger)
-- -- EFFECT MANAGER
-- type alias State =
--     { sentNumber : Bool }
-- -- NOTE: used in onEffects
-- --
-- init : Task Never State
-- init =
--     Task.succeed { sentNumber = False }
-- onEffects : Platform.Router msg Int -> List (MySub msg) -> State -> Task Never State
-- onEffects router subs state =
--     -- case subs of
--     --    [] -> Task.succeed state
--     --    (sub1::subs) ->
--     --     (if not state.sentNumber then
--     --         sendNumber router sub1
--     --     else
--     --         Task.succeed state)
--     --             |> Task.andThen (\newState ->
--     --                 List.foldl
--     --             )
--     List.foldl
--         (\sub bigTask ->
--             bigTask
--                 |> Task.andThen
--                     (\modifiedState ->
--                         if not modifiedState.sentNumber then
--                             sendNumber router sub
--                         else
--                             Task.succeed state
--                     )
--         )
--         (Task.succeed state)
--         subs
-- sendNumber : Platform.Router msg x -> MySub msg -> Task Never State
-- sendNumber router (MySub tagger) =
--     Platform.sendToApp router (tagger 42)
--         |> Task.map (\_ -> { sentNumber = True })
-- onSelfMsg : Platform.Router msg Int -> Int -> State -> Task Never State
-- onSelfMsg router newTime state =
--     Task.succeed state
