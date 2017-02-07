User.create!([
  {name: "Aaron R", email: "acme@aol.com", password: "password", password_confirmation: "password"},
  {name: "Joe", email: "Smith", password: "password", password_confirmation: "password"},
  {name: "Joe ", email: "joe@aol.com", password: "password", password_confirmation: "password"},
  {name: "sally", email: "sally@yahoo.com", password: "password", password_confirmation: "password"},
  {name: "Susan", email: "susan@yahoo.com", password: "password", password_confirmation: "password"}
])
Car.create!([
  {color: "blue", year: "2013", manufacture: "kia", image: "http://www.optimaforums.com/forum/attachments/optima-general-discussion/11817d1350503387-2013-corsa-blue-sx-limited-here-new-color-sxl-bluesxl2.jpg", name: "2013 Corsa", description: nil, price: 30000, in_stock: nil, supplier_id: nil, user_id: nil},
  {color: "Model T", year: "1905", manufacture: "Ford", image: "", name: "thing", description: nil, price: 100, in_stock: nil, supplier_id: nil, user_id: nil},
  {color: "Silver", year: "2145", manufacture: "Mars Lunar Corp", image: "", name: "Mars Lunar Rover", description: nil, price: 150000000, in_stock: nil, supplier_id: nil, user_id: nil},
  {color: "Grey", year: "", manufacture: "Fred Flintstone", image: "", name: "Flintstone mobile", description: nil, price: 1, in_stock: nil, supplier_id: nil, user_id: nil},
  {color: "red", year: "2003", manufacture: "lanborghini", image: "", name: "countach", description: nil, price: 10000000, in_stock: nil, supplier_id: nil, user_id: 3},
  {color: "silver", year: "2345", manufacture: "Mars Lunar Corp", image: "", name: "lunar lander", description: nil, price: 123123, in_stock: nil, supplier_id: nil, user_id: 3},
  {color: "blue", year: "3456", manufacture: "acme", image: "", name: "ford", description: nil, price: 12123, in_stock: nil, supplier_id: nil, user_id: 3},
  {color: "red", year: "1999", manufacture: "Taurus", image: "none", name: "Ford", description: nil, price: 100000, in_stock: nil, supplier_id: nil, user_id: 5},
  {color: "black", year: "2014", manufacture: "Mitsubishi", image: "http://carsmag.us/wp-content/uploads/2014/07/2014-Mitsubishi-Lancer-GT-Black.jpg", name: "Mitsubishi Lancer", description: nil, price: 10000, in_stock: nil, supplier_id: nil, user_id: 5}
])
Category.create!([
  {name: nil},
  {name: "sports car"},
  {name: "antique"},
  {name: "concept car"}
])
CategoryCar.create!([
  {category_id: 1, product_id: nil, car_id: 3},
  {category_id: 2, product_id: nil, car_id: 4},
  {category_id: 3, product_id: nil, car_id: 5},
  {category_id: 2, product_id: nil, car_id: 3}
])
Order.create!([
  {user_id: 3, product_id: nil, quantity: 1, subtotal: nil, tax: nil, total: nil},
  {user_id: 3, product_id: nil, quantity: 1, subtotal: nil, tax: nil, total: nil},
  {user_id: 3, product_id: nil, quantity: 1, subtotal: nil, tax: nil, total: nil},
  {user_id: 3, product_id: nil, quantity: 1, subtotal: nil, tax: nil, total: nil},
  {user_id: 3, product_id: nil, quantity: 1, subtotal: nil, tax: nil, total: nil},
  {user_id: 3, product_id: nil, quantity: 1, subtotal: nil, tax: nil, total: nil},
  {user_id: 3, product_id: nil, quantity: 1, subtotal: nil, tax: nil, total: nil},
  {user_id: 3, product_id: nil, quantity: 1, subtotal: nil, tax: nil, total: nil},
  {user_id: 3, product_id: nil, quantity: 1, subtotal: nil, tax: nil, total: nil},
  {user_id: 3, product_id: nil, quantity: 1, subtotal: nil, tax: nil, total: nil},
  {user_id: 3, product_id: nil, quantity: 1, subtotal: nil, tax: nil, total: nil},
  {user_id: 3, product_id: nil, quantity: 1, subtotal: nil, tax: nil, total: nil},
  {user_id: 3, product_id: nil, quantity: 1, subtotal: nil, tax: nil, total: nil},
  {user_id: 3, product_id: nil, quantity: 1, subtotal: nil, tax: nil, total: nil},
  {user_id: 3, product_id: nil, quantity: 1, subtotal: nil, tax: nil, total: nil},
  {user_id: 3, product_id: 1, quantity: 1, subtotal: nil, tax: nil, total: nil}
])
Supplier.create!([
  {name: "Joe", email: "joe@gmail.com", phone: "312-232-2323"},
  {name: "Jerry", email: "jerry@yahoo.com", phone: "456-345-4567"},
  {name: "Gary", email: "gary@yahoo.com", phone: "678-456-2345"}
])
