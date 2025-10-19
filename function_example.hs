bmiTell :: (RealFloat a) => a -> a -> String
bmiTell weight height
    | bmi <= 18.5 = "You're underweight, you emo, you!"
    | bmi <= 25.0 = "You're supposedly normal. Pffft, I bet you're ugly!"
    | bmi <= 30.0 = "You're fat! Lose some weight, fatty!"
    | otherwise                 = "You're a whale, congratulations!"
    where bmi = weight / height ^ 2


describeList :: [a] -> String
describeList xs = "The list is " ++ case xs of [] -> "empty."
                                               [x] -> "a singleton list." 
                                               xs -> "a longer list."

reverse' :: [a] -> [a]
reverse' [] = []
reverse' (x:xs) = reverse' xs ++ [x]

reverseSentence :: String -> String
reverseSentence [] = []
reverseSentence (x:xs) = reverseSentence xs ++ [x]

data Shape = Circle Float Float Float | Rectangle Float Float Float Float 
surface :: Shape -> Float
surface (Circle _ _ r) = pi * r ^ 2
surface (Rectangle x1 y1 x2 y2) = (abs $ x2 - x1) * (abs $ y2 - y1)


main :: IO ()
main = do
    print (bmiTell 50 12)
    print (describeList [1])
    print (reverse [12,3,4])
    let input_string = "I like coding"
    print (reverseSentence input_string)
    let area_circle = Circle 10 20 10
    print (surface area_circle)
    -- i have done this small experiment to learn haskell language syntaxgit init
