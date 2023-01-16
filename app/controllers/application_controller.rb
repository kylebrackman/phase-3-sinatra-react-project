class ApplicationController < Sinatra::Base
  set :default_content_type, 'application/json'
  
  # Add your routes here
  get "/" do
    { message: "test!" }.to_json
  end

  get "/users" do 
    users = User.all
    users.to_json(include: :reviews)
  end

  post "/users" do
    user = User.create(
      username: params[:username]
    )
    user.to_json
  end

  get "/reviews" do 
    reviews = Review.all
    reviews.to_json
  end

end
