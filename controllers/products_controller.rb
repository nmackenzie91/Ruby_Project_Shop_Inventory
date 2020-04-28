require( 'sinatra' )
require( 'sinatra/contrib/all' )
require_relative( '../models/product.rb' )
also_reload( '../models/*' )



get '/products' do
    @products = Product.all()
    erb ( :"products/index" )
  end




#ReSTful routes
#POST    GET  PUT   DELETE
#CREATE READ UPDATE DELETE