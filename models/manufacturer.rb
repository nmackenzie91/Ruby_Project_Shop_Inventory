require_relative('../db/sql_runner')

class Manufacturer


    attr_accessor :name, :location, :email, :tel, :product_speciality, :shipping_times
    attr_reader :id


    def initialize( options )
        @id = options['id'].to_i if options ['id']
        @name = options['name']
        @location = options['location']
        @email = options['email']
        @tel = options['tel'].to_i
        @product_speciality = options['product_speciality']
        @shipping_times = options['shipping_times']
    end


#CRUD
#Manufacturers page will need to be able to pull all necessary data from initialzie as well as updating their info, removing bankrupt companies and adding new ones

    def save()
        sql = "INSERT INTO manufacturers
        (name, location, email, tel, product_speciality, shipping_times)
        VALUES
        ($1, $2, $3, $4, $5, $6)
        RETURNING id"
        values = [@name, @location, @email, @tel, @product_speciality, @shipping_times]
        results = SqlRunner.run(sql, values)
        @id = results.first()['id'].to_i
    end


    def update()
        sql = "UPDATE manufacturers
        SET
        (name, location, email, tel, product_speciality, shipping_times)
        =
        ($1, $2, $3, $4, $5, $6)
        WHERE id = $7"    
        values = [@name, @location, @email, @tel, @product_speciality, @shipping_times]
        SqlRunner.run(sql, values)
    end



    def delete()
        sql = "DELETE FROM manufacturers WHERE id = $1"
        values = [@id]
        SqlRunner.run(sql, values)
    end




    def self.map_items(manufacturer_data)
        return manufacturer_data.map { |manufacturer| Manufacturer.new(manufacturer) }
    end


    def self.all()
        sql = "SELECT * FROM manufacturers"
        manufacturer_data = SqlRunner.run(sql)
        manufacturers = map_items(manufacturer_data)
        return manufacturers
    end


    def self.find()
        sql = "SELECT * FIND manufacturers WHERE id = $1"
        values = [id]
        results = SqlRunner.run(sql, values).first
        return Manufacturer.new(results)
    end

    def self.delete_all()
        sql = "DELETE FROM manufacturers"
        SqlRunner.run(sql)
    end


end