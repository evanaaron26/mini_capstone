
# x = Car.new({
# 	color: "black", 
# 	year: "2014", 
# 	manufacture: "Mitsubishi", 
# 	price: "10000", 
# 	image: "http://carsmag.us/wp-content/uploads/2014/07/2014-Mitsubishi-Lancer-GT-Black.jpg", 
# 	name: "Mitsubishi Lancer"})
# x.save

# x = Car.new({
# 	color: "blue", 
# 	year: "2013", 
# 	manufacture: "kia", 
# 	price: "30000", 
# 	image: "http://www.optimaforums.com/forum/attachments/optima-general-discussion/11817d1350503387-2013-corsa-blue-sx-limited-here-new-color-sxl-bluesxl2.jpg", 
# 	name: "2013 Corsa"})
# x.save

# x = Car.new({
# 	color: "white", 
# 	year: "2014", 
# 	manufacture: "Ford", 
# 	price: "40000", 
# 	image: "http://images.dealer.com/autodata/us/large_stockphoto-color/2014/USC40FOS131A0/YZ.jpg", 
# 	name: "2014 Escape"})
# x.save

# x = Car.new({
# 	color: "silver", 
# 	year: "2009", 
# 	manufacture: "Aston Martin", 
# 	price: "10000000", 
# 	image: "http://images.gtcarlot.com/pictures/12426069.jpg", 
# 	name: "V8 Vantage Coupe"})
# x.save

# products = Product.all

# products.each do |product|
# 	product.supplier_id = 1
# 	product.save
# end 

# or

# products.each do |product|
# 	product.assign_attributes(supplier_id: 1)
# 	product.save
# end

# to assign random ID
# products.each do |product|
# 	product.assign_attributes(supplier_id: rand(1..3))
# 	product.save
# end









