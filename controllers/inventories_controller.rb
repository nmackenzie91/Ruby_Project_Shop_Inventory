require( 'sinatra' )
require( 'sinatra/contrib/all' )
require( 'pry-byebug' )
require_relative( '../models/inventory.rb' )
require_relative( '../models/product.rb' )
require_relative( '../models/manufacturer.rb' )
also_reload( '../models/*' )






#ReSTful routes
#POST    GET  PUT   DELETE
#CREATE READ UPDATE DELETE