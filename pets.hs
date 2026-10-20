data MyPet = Cat | Dog 
sayHello :: MyPet -> String 
sayHello Cat = "Hello, cat!" 
sayHello Dog = "Hello, dog!" 

sayHelloAll :: [MyPet] -> [String] 
sayHelloAll pets = map sayHello pets 

main :: IO () 
main = putStrLn (show (sayHelloAll [Dog, Cat, Dog]))