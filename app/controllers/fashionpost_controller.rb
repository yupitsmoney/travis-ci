class FashionpostController < ApplicationController
	def new
        @fashionpost = Fashionpost.new 
    end

    def index
       @posts = Fashionpost.all
   end

   def new
       @post = Fashionpost.new
   end

   def delete
       @post = Fashionpost.delete(params[:id]) 
       redirect_to users_path
   end

   def edit
       @post = Fashionpost.find(params[:id])

   end

   def update
         @post = Fashionpost.find(params[:id])

         if @post.update_attributes(post_params)
           redirect_to posts_path(current_user)
         else
           render :edit
         end
    end

   def create
       post = Fashionpost.new(post_params)
       if post.valid?
           current_user.fashionposts.push post
           current_user.save
           redirect_to posts_path
       else
           flash["alert-warning"] = "Sorry, post not created"
           redirect_to new_post_path
       end
   end

   def show
       @post = Fashionpost.find(params[:id])
       # @comment = Comment.new
   end

private
    
     
    def post_params
       params.require(:fashionpost).permit(:day, :hat_url, :shirt_url, :jacket_url, :pants_url, :shoes_url)
   end
end
