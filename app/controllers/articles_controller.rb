class ArticlesController < ApplicationController

  get '/articles' do
    @articles = Article.all

    erb :"articles/index"
  end

  get '/articles/new' do

    erb :"articles/new"
  end

  post '/articles' do
    @article = Article.new
    @article.title = params[:title]
    @article.content = params[:content]
    @article.save

    redirect "/articles/#{@article.id}"
  end

  get '/articles/:id' do
    @article = Article.find(params[:id])
    erb :"articles/show"
  end

end
