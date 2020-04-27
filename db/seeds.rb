require_relative( "../models/product.rb" )
require_relative( "../models/manufacturer.rb" )
require_relative( "../models/inventory.rb" )
require("pry-byebug")

Inventory.delete_all()
Manufacturer.delete_all()
Product.delete_all()


manufacturer1 = Manufacturer.new({
    "name" => "Anuj Woollen Mill"
    "address" => "Plot No-75, Industrial Area No-3, A.B. Road, Dewas - 450001, Madhya Pradesh, India"
    "email" => "orders@anujwoollens.com"
    "tel" => 917272258326
    "product_speciality" => "Recycled Wool"
    "shipping_times" => "2-4 weeks"
})

manufacturer1.save()

manufacturer2 = Manufacturer.new({
    "name" => "Northland Cashmere"
    "address" => "Harmony Building, Jinchuan Science & Technology Area, Jin Er Road, Jinchuan Development Zone, Huhhot, China 010080 "
    "email" => "tergel@NorthlandCashmere.com"
    "tel" => 008615124760600
    "product_speciality" => "Cashmere"
    "shipping_times" => "4-6 weeks"
})

manufacturer2.save()



manufacturer2 = Manufacturer.new({
    "name" => "Lochcarron of Scotland"
    "address" => "Waverely Mill, Rogers Road, Selkirk, Scotland, TD7 5DX "
    "email" => "sales@lochcarron.com"
    "tel" => 01750726123
    "product_speciality" => "Lambswool"
    "shipping_times" => "3-5 days"
})

manufacturer2.save()


product1