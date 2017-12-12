main :: IO()
main = do
	let multTwoWithNine = mulThree 9
	putStrLn $ show $ multTwoWithNine 2 3

	let multWithEighteen = multTwoWithNine 2
	putStrLn $ show $ multWithEighteen 10


mulThree :: (Num a) => a -> a -> a -> a
mulThree x y z = x * y * z