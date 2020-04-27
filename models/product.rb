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
        @manufacturer_id = options['manufacturing_id'].to_i
    end




#CRUD
#Products

    def save()
        sql = "INSERT INTO products
        (name, type, quantity, buy_price, selling_price, manufacturing_id)
        VALUES
        ($1, $2, $3, $4, $5)
        RETURNING id"
        values = [@name, @type, @quantity, @buying_price, @selling_price, @manufacturer_id]
        results = SqlRunner.run(sql, values)
        @id = results.first()['id'].to_i
    end

    def update()
    sql = "UPDATE products
    SET
    (name, type, quantity, buy_price, selling_price, manufacturing_id)
    =
    ($1, $2, $3, $4, $5, $6)
    WHERE id = $7"
    values =  [@name, @type, @quantity, @buying_price, @selling_price, @manufacturer_id]
    SqlRunner.run(sql, values)
    end

    def delete()
        sql = "DELETE FROM products WHERE id = $1"
        values = [@id]
        SqlRunner.run(sql, values)
    end


    def self.map_items(product_data)
        return product_data.map { |product| Product.new(product)}
    end



    def self.all()
        sql = "SELECT * FROM products"
        product_data = SqlRunner.run(sql)
        products = map_items(product_data)
        return products
    end


    def self.find()
        sql = "SELECT * FIND products WHERE id = $1"
        values = [id]
        results = SqlRunner.run(sql,values).first
        return Product.new(results)
    end

    def self.delete_all()
        sql = "DELETE FROM products"
        SqlRunner.run(sql)
    end 

end


