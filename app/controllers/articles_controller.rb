class ArticlesController < ApplicationController

  get '/articles' do
    @articles = Article.all

    erb :"articles/index"
  end

  get '/articles/new' do
    erb :"articles/new"
  end

  post '/articles' do
    @article = Article.create({title: params[:title], content: params[:content]})
    erb :"articles/show"
  end

  get '/articles/:id' do
    @article = Article.find(params[:id])
    erb :"articles/show"
  end

end
