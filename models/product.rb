require_relative('../db/sql_runner')

class Product

    attr_accessor :name, :type, :quantity, :buying_price, :selling_price, :manufacturer_id
    attr_reader :id


    def initialize ( options )
        @id = options['id'].to_i if options['id']
        @name = options['name']
        @type = options['type']
        @quantity = options['quantity'].to_i
        @buying_price = options['buying_price'].to_f
        @selling_price = options['selling_price'].to_f
    end




#CRUD
#Products



end


