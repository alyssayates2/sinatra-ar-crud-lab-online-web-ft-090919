class ArticlesController < ApplicationController

  get '/articles' do
    @articles = Article.all

    erb :"articles/index"
  end

  get '/articles/new' do
    @article = Article.create(params[:title], params[:content])
    erb :"articles/new"
  end

end
