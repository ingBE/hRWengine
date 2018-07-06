import Core
import Particle

main = do
    putStrLn.show $ (\[v1,v2,v3] -> v2 !* v3) (makeOrthonormalBasis [(5,0,0),(0,2,3),(2,1,5)])
