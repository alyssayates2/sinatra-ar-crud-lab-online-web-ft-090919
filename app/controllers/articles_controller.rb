class ArticlesController < ApplicationController

  get '/articles' do
    @articles = Article.all

    erb :"articles/index"
  end

  get '/articles/new' do
    @article = Article.new
    erb :"articles/new"
  end

end
