a = [ "a", "b", "c", "d" ]


#collect is a synonym for a map
a.collect { |x| x + "!" }        #=> ["a!", "b!", "c!", "d!"]
a.map.with_index{ |x, i| x * i } #=> ["", "b", "cc", "ddd"]


#this is the equivalent code useing an each loop

b = []
a.each do |x|                                #=> ["a", "b", "c", "d"]
    b << x + "!"
end

p b

p a.map.with_index  {|x, i|}
p a 
