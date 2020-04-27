require_relative( "../models/product.rb" )
require_relative( "../models/manufacturer.rb" )
require_relative( "../models/inventory.rb" )
require("pry-byebug")

Inventory.delete_all()
Manufacturer.delete_all()
Product.delete_all()


#MANUFACTURERS x 3

manufacturer1 = Manufacturer.new({
    "name" => "Anuj Woollen Mill",
    "address" => "Plot No-75, Industrial Area No-3, A.B. Road, Dewas - 450001, Madhya Pradesh, India",
    "email" => "orders@anujwoollens.com",
    "tel" => 72258326,
    "product_speciality" => "Recycled Wool",
    "shipping_times" => "2-4 weeks"
})

manufacturer1.save()

manufacturer2 = Manufacturer.new({
    "name" => "Northland Cashmere",
    "address" => "Harmony Building, Jinchuan Science & Technology Area, Jin Er Road, Jinchuan Development Zone, Huhhot, China 010080 ",
    "email" => "tergel@NorthlandCashmere.com",
    "tel" => 4760600,
    "product_speciality" => "Cashmere",
    "shipping_times" => "4-6 weeks",
})

manufacturer2.save()



manufacturer3 = Manufacturer.new({
    "name" => "Lochcarron of Scotland",
    "address" => "Waverely Mill, Rogers Road, Selkirk, Scotland, TD7 5DX ",
    "email" => "sales@lochcarron.com",
    "tel" => 726123,
    "product_speciality" => "Lambswool",
    "shipping_times" => "3-5 days",
})

manufacturer3.save()


#PRODUCTS x 13
#RECYCLED x 7

product1 = Product.new({
    "name" => "Mackenzie",
    "type" => "Recycled Wool",
    "quantity" => 200,
    "buying_price" => 8,
    "selling_price" => 45,
    "manufacturer_id" => manufacturer1.id
})
product1.save()


product2 = Product.new({
    "name" => "Stewart Muted Blue",
    "type" => "Recycled Wool",
    "quantity" => 200,
    "buying_price" => 8,
    "selling_price" => 45,
    "manufacturer_id" => manufacturer1.id
})
product2.save()


product3 = Product.new({
    "name" => "Baird",
    "type" => "Recycled Wool",
    "quantity" => 200,
    "buying_price" => 8,
    "selling_price" => 45,
    "manufacturer_id" => manufacturer1.id
})
product3.save()


product4 = Product.new({
    "name" => "Black Watch",
    "type" => "Recycled Wool",
    "quantity" => 200,
    "buying_price" => 8,
    "selling_price" => 45,
    "manufacturer_id" => manufacturer1.id
})
product4.save()


product5 = Product.new({
    "name" => "Buchanan Antique",
    "type" => "Recycled Wool",
    "quantity" => 200,
    "buying_price" => 8,
    "selling_price" => 45,
    "manufacturer_id" => manufacturer1.id
})
product5.save()


product6 = Product.new({
    "name" => "Buchanan Natural",
    "type" => "Recycled Wool",
    "quantity" => 200,
    "buying_price" => 8,
    "selling_price" => 45,
    "manufacturer_id" => manufacturer1.id
})
product6.save()


product7 = Product.new({
    "name" => "Jacob",
    "type" => "Recycled Wool",
    "quantity" => 200,
    "buying_price" => 8,
    "selling_price" => 45,
    "manufacturer_id" => manufacturer1.id
})
product7.save()



#CASHMERE x 3

product8 = Product.new({
    "name" => "Weathered Mackenzie",
    "type" => "Cashmere",
    "quantity" => 50,
    "buying_price" => 85,
    "selling_price" => 400,
    "manufacturer_id" => manufacturer2.id
})
product8.save()


product9 = Product.new({
    "name" => "Stewart Royal",
    "type" => "Cashmere",
    "quantity" => 50,
    "buying_price" => 85,
    "selling_price" => 400,
    "manufacturer_id" => manufacturer2.id
})
product9.save()


product10 = Product.new({
    "name" => "Buchanan Antique",
    "type" => "Cashmere",
    "quantity" => 50,
    "buying_price" => 85,
    "selling_price" => 400,
    "manufacturer_id" => manufacturer2.id
})
product10.save()



#LAMBSWOOL x 3

product11 = Product.new({
    "name" => "Mackenzie",
    "type" => "Lambswool",
    "quantity" => 100,
    "buying_price" => 60,
    "selling_price" => 120,
    "manufacturer_id" => manufacturer3.id
})
product11.save()


product12 = Product.new({
    "name" => "Isle of Skye",
    "type" => "Lambswool",
    "quantity" => 100,
    "buying_price" => 60,
    "selling_price" => 120,
    "manufacturer_id" => manufacturer3.id
})
product12.save()


product13 = Product.new({
    "name" => "Scotland Forever",
    "type" => "Lambswool",
    "quantity" => 100,
    "buying_price" => 60,
    "selling_price" => 120,
    "manufacturer_id" => manufacturer3.id
})
product13.save()


#INVENTORY COMBO x 13

inventory_item1 = Inventory.new({
        "product_id" => product1.id,
        "manufacturer_id" => manufacturer1.id
})

inventory_item1.save()






binding.pry
nil