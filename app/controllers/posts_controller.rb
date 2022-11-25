class PostsController < ApplicationController
	def index
		@heading = 'Hello!'
		@text = 'You are the best!'
		@posts = Post.all
	end
	def new #Create new post
	end
	def create
 render plain: params[:post].inspect
end
def show
 @post = Post.find(params[:id]) #шукаємо необхідний пост в базі даних і беремо його по ID

end
def create
 #render plain: params[:post].inspect
 @post=Post.new(post_params) # передаємо в метод дані із дозволених полів

 @post.save # зберігаємо пост в базі даних
 redirect_to @post #викликаємо метод для переадресації користувача на нову сторінку

end
private
def post_params
 params.require(:post).permit(:title, :body)
end
end
