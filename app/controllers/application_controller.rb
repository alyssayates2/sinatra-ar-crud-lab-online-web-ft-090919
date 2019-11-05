
require_relative '../../config/environment'

class ApplicationController < Sinatra::Base

  configure do
    set :public_folder, 'public'
    set :views, 'app/views'
  end

  get '/articles' do
    @articles = Article.all

    erb :"articles/index"
  end

  get '/articles/:id' do
    @article = Article.find(params[:id])
    erb :"articles/show"
  end


end
