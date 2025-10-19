main :: IO ()
main = do
    let xs = [(1,3), (4,3), (2,4), (5,3), (5,6), (3,1)]
    print [a+b | (a,b) <- xs]