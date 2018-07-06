module Core where

type Vector = (Float, Float, Float)

zeroVector :: Vector
zeroVector = (0,0,0)

(!+) :: Vector -> Vector -> Vector
(!+) (x1,y1,z1) (x2,y2,z2) = (x1+x2,y1+y2,z1+z2)

(!-) :: Vector -> Vector -> Vector
(!-) (x1,y1,z1) (x2,y2,z2) = (x1-x2,y1-y2,z1-z2)

(!*) :: Vector -> Vector -> Float
(!*) (x1,y1,z1) (x2,y2,z2) = x1*x2 + y1*y2 + z1*z2
dot = (!*)
dotProduct = (!*)
inner = (!*)
innerProduct = (!*)
scalaProduct = (!*)

(!%) :: Vector -> Vector -> Vector
(!%) (x1,y1,z1) (x2,y2,z2) = (y1*z2-y2*z1,z1*x2-z2*x1,x1*y2-x2*y1)
cross = (!%)
crossProduct = (!%)
outer = (!%)
outerProduct = (!%)
vectorProduct = (!%)

(*+) :: Vector -> Float -> Vector
(*+) (x,y,z) n = (n*x,n*y,n*z)

(//) :: Vector -> Float -> Vector
(//) (x,y,z) n = (x/n,y/n,z/n)

invert :: Vector -> Vector
invert (x,y,z) = (-x,-y,-z)

magnitude :: Vector -> Float
magnitude (x,y,z) = sqrt(x^2 + y^2 + z^2)

squareMagnitude :: Vector -> Float
squareMagnitude (x,y,z) = x^2 + y^2 + z^2

normalize :: Vector -> Vector
normalize v = v // (magnitude v)

makeOrthonormalBasis :: [Vector] -> [Vector]
makeOrthonormalBasis [v1,v2,v3] = [normalize v1,normalize (cross v3 v1),cross (normalize v1) (normalize (cross v3 v1))]
