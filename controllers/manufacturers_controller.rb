require ('pry')
require( 'sinatra' )
require( 'sinatra/contrib/all' )
require_relative( '../models/manufacturer.rb' )
also_reload( '../models/*' )



  get '/manufacturers' do
    @manufacturers = Manufacturer.all()
    erb ( :"manufacturers/index" )
  end

  get '/manufacturers/new' do
    @manufacturers = Manufacturer.all()
    erb( :"manufacturers/new" )
  end


  get '/manufacturers/:id' do  
    @manufacturer = Manufacturer.find(params['id'].to_i)
    erb( :"manufacturers/show" )
  end

  post '/manufacturers' do 
    @manufacturer = Manufacturer.new( params )
    @manufacturer.save()
    redirect to '/manufacturers'
  end

  get '/manufacturers/:id/edit' do 
    @manufacturer = Manufacturer.find( params[:id] )
    erb( :"manufacturers/edit" )
  end
  
  post '/manufacturers/:id' do 
    Manufacturer.new( params ).update
    redirect to '/manufacturers'
  end
  
  post '/manufacturers/:id/delete' do 
    manufacturer = Manufacturer.find( params[:id] )
    manufacturer.delete()
    redirect to '/manufacturers'
  end


#ReSTful routes
#POST    GET  PUT   DELETE
#CREATE READ UPDATE DELETE