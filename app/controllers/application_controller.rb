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

  post "/reviews" do
    review = Review.create(
      item_name: params[:item_name],
      item_review: params[:item_review],
      username: params[:username],
      item_rating: params[:item_rating],
      user_id: params[:user_id]
    )
    review.to_json
  end

  patch "/reviews/:id" do 
    review = Review.find params[:id]
    review.update(
      item_name: params[:item_name],
      item_review: params[:item_review],
      item_rating: params[:item_rating],
      user_id: params[:user_id]
    )
    review.to_json
  end

  delete "/reviews/:id" do 
    review = Review.find params[:id]
    review.destroy
    review.to_json
  end
end
