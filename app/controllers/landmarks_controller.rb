class LandmarksController < ApplicationController

  get "/landmarks/new" do
    erb :"/landmarks/new"
  end

  post "/landmarks" do
    @landmark = Landmark.create(params[:landmark])
    redirect "/landmarks/show"
  end

  get "/landmarks/show" do
    @landmarks = Landmark.all
    erb :"/landmarks/show"
  end

end
