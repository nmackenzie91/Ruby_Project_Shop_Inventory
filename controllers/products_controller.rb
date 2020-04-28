require( 'sinatra' )
require( 'sinatra/contrib/all' )
require_relative( '../models/product.rb' )
also_reload( '../models/*' )



get '/products' do  #index
    @products = Product.all()
    erb ( :"products/index" )
  end


  get '/products/new' do # new
    @products = Product.all()
    @manufacturers = Manufacturer.all()
    erb( :"products/new" )
  end


  get '/products/:id' do    #show
    @product = Product.find(params['id'].to_i)
    erb( :"products/show" )
  end

  post '/products' do # create
    @product = Product.new( params )
    @product.save()
    redirect to '/products'
  end

  get '/products/:id/edit' do # edit
    @product = Product.find( params[:id] )
    erb( :edit )
  end
  
  post '/products/:id' do # update
    Product.new( params ).update
    redirect to '/products'
  end
  
  post '/products/:id/delete' do # delete
    product = Product.find( params[:id] )
    product.delete()
    redirect to '/products'
  end


#ReSTful routes
#POST    GET  PUT   DELETE
#CREATE READ UPDATE DELETE