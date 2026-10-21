myfoldr :: (a -> b -> b) ->b -> [a] -> b
myfoldr _ base []       = base
myfoldr f base (x:xs)   = f x (myfoldr f base xs)