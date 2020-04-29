require( 'sinatra' )
require( 'sinatra/contrib/all' )
require_relative('controllers/inventories_controller')
require_relative('controllers/manufacturers_controller')
require_relative('controllers/products_controller')
require_relative('models/product')


get '/' do
    @products = Product.all()
    erb( :index )
end
    


    
    
    
    
    #requires all of the other controllers
    #most likely a get '/'