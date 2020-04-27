require_relative('../db/sql_runner')


class Inventory

    attr_reader :product_id, :manufacturer_id, :id

    def intilialize( options )
        @id = options['id'].to_i if options['id']
        @product_id = options['product_id'].to_i
        @manufacturer_id = options['manufacturer_id'].to_i
    end




#CRUD

end