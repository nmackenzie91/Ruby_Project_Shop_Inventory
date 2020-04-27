require_relative( "../models/product.rb" )
require_relative( "../models/manufacturer.rb" )
require_relative( "../models/inventory.rb" )
require("pry-byebug")

Inventory.delete_all()
Manufacturer.delete_all()
Product.delete_all()


manufacturer1 = Manufacturer.new({
    "name" => "Anuj Woollen Mill"
    "location"
}

product1