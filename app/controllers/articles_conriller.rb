class ArticlesConroller < ApplicationController

  get '/articles' do
    @articles = Article.all

    erb :"articles/index"
  end

<<<<<<< HEAD

=======
>>>>>>> 419c7396cee7d1de45780fde956c14245bb23a5c
end
