module Particle where

import Core

-- definition Particle type. (posision,velocity,acceleration,mass,force)
type Particle = (Vector,Vector,Vector,Float,Vector)

integrate :: Particle -> Float -> Particle
integrate (position,velocity,acceleration,mass,force) duration = (position !+ velocity*+duration,velocity !+ acceleration*+duration,acceleration,mass,zeroVector)
