module Shadows
    where

data Direction = U | D | R | L | UR | UL | DR | DL
    deriving Eq

type Coords = (Int,Int)

nextJumpLocation :: Coords -> Coords -> Direction -> Coords
nextJumpLocation (w,h) (x0,y0) _ = (x0+(h-x0)`div` 2,2)
