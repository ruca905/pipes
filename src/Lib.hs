module Lib
    ( glossExample
    ) where

import RenderingOfUniverse
import Objects
import UsefulFunctions

import           CodeWorld

initialWorld :: Int -> Int -> World
initialWorld width height= World {
  worldMap = generateCellsMatrix width height
  , playQueue = availableCells
}

width :: Int
width = 10

height :: Int
height = 10

glossExample :: IO ()
glossExample = activityOf (initialWorld width height) handleEventNew renderThis

handleEventNew :: Event -> World -> World
handleEventNew ev world = world

-- Simulation -----------------------------------------------------------------
updateWorld :: Float -> World -> World
updateWorld dt world = world

renderThis :: World -> Picture
renderThis world = circle 5

{-
-- Events ---------------------------------------------------------------------
handleEvent :: Event -> World -> World
handleEvent (EventKey (MouseButton _) _ _ (x, y)) world = updatePressedCell world cellPosition
  where
    cellPosition = Just (0, 0)-- check it based on x and y
handleEvent _event world = world
-}

