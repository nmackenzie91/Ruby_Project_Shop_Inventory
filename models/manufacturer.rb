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


end