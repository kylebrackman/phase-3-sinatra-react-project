class ApplicationController < Sinatra::Base
  set :default_content_type, 'application/json'
  
  # Add your routes here
  get "/" do
    { message: "test!" }.to_json
  end

  get "/users" do 
    users = User.all
    users.to_json
  end
  get "/items" do 
    items = Item.all
    items.to_json
  end

end
