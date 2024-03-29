class ArticlesController < ApplicationController

before_action :set_article , only: [:edit ,:update ,:destroy]
 
 def index

 @article=Article.all
 
 end



 def new
 @article=Article.new
 end

 def create
 @article=Article.new(article_params)
 @article.save

   if @article.save
 	flash[:notice] ="Article Created"
 	redirect_to article_path(@article)
   else
    render 'new'
     end
 end

 def edit

 end

 def update
  if @article.update(article_params)
           flash[:notice]="Edited Success"
           redirect_to article_path(@article)
    else
         render 'edit'               
	end
  end

 def destroy
 @article.destroy
 flash[:notice] =" Successfully Deleted"
 redirect_to articles_path 
 end

def show

 @article=Article.find(params[:id])
end
   private

   def set_article
   @article=Article.find(params[:id]) 

   	
   end
 def article_params
 params.require(:article).permit(:titile, :description)

 end

end
