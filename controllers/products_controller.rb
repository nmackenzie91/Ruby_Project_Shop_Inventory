require ( 'pry' )
require( 'sinatra' )
require( 'sinatra/contrib/all' )
require_relative( '../models/product.rb' )
also_reload( '../models/*' )



get '/products' do 
    @products = Product.all()
    erb ( :"products/index" )
  end


  get '/products/new' do
    @products = Product.all()
    @manufacturers = Manufacturer.all()
    erb( :"products/new" )
  end


  get '/products/:id' do  
    @product = Product.find(params['id'].to_i)
    erb( :"products/show" )
  end

  post '/products' do 
    @product = Product.new( params )
    @product.save()
    redirect to '/products'
  end

  get '/products/:id/edit' do 
    @manufacturers = Manufacturer.all()
    @product = Product.find( params[:id] )
    erb( :"products/edit" )
  end
  
  post '/products/:id' do 
    Product.new( params ).update
    redirect to '/products'
  end
  
  post '/products/:id/delete' do 
    product = Product.find( params[:id] )
    product.delete()
    redirect to '/products'
  end


#ReSTful routes
#POST    GET  PUT   DELETE
#CREATE READ UPDATE DELETE