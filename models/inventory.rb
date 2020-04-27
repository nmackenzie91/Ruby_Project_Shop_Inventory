require_relative('../db/sql_runner')


class Inventory

    attr_reader :product_id, :manufacturer_id, :id

    def intilialize( options )
        @id = options['id'].to_i if options['id']
        @product_id = options['product_id'].to_i
        @manufacturer_id = options['manufacturer_id'].to_i
    end




#CRUD
#Not sure if I will need all of the basic CRUD

def save()
    sql = "INSERT INTO inventories
    (product_id, manufacturer_id)
    VALUES
    ($1, $2)
    RETURNING id"
    values = [@product_id, @manufacturer_id]
    results = SqlRunner.run(sql, values)
    @id = results.first()['id'].to_i
end


def update()
    sql = "UPDATE inventories
    SET
    (product_id, manufacturer_id)
    =
    ($1, $2)
    WHERE id = $3"    
    (product_id, manufacturer_id)
    SqlRunner.run(sql, values)
end



def delete()
    sql = "DELETE FROM inventories WHERE id = $1"
    values = [@id]
    SqlRunner.run(sql, values)
end




def self.map_items(inventory_data)
    return inventory_data.map { |inventory| Inventory.new(inventory) }
end


def self.all()
    sql = "SELECT * FROM inventories"
    inventory_data = SqlRunner.run(sql)
    inventories = map_items(inventory_data)
    return inventories
end


def self.find()
    sql = "SELECT * FIND inventories WHERE id = $1"
    values = [id]
    results = SqlRunner.run(sql, values).first
    return Inventory.new(results)
end

def self.delete_all()
    sql = "DELETE FROM inventories"
    SqlRunner.run(sql)
end




end