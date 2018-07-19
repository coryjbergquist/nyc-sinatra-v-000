class LandmarksController < ApplicationController

  get "/landmarks/new" do
    erb :"/landmarks/new"
  end

  post "/landmarks" do
    @landmark = Landmark.create(params[:landmark])
    redirect "/landmarks"
  end

  get "/landmarks" do
    @landmarks = Landmark.all
    erb :"/landmarks/show"
  end

  get "/landmarks/:id/edit" do
    @landmark = Landmark.find_by(id: params[:id])
    erb :"/landmarks/edit"
  end

  patch "/landmarks/:id" do
    binding.pry
    @landmark = Landmark.find_by(id: params[:id])
    redirect "/landmarks/:id"
  end



  get "/landmarks/:id" do
    @landmark = Landmark.find_by(id: params[:id])
    erb :"/landmarks/single"
  end


end
