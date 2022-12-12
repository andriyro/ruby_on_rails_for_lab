class ChatsController < ApplicationController
	def create
@post = Post.find(params[:post_id])
@chat = @post.chats.create(chat_params)
redirect_to post_path(@post)
end
private
def chat_params
params.require(:chat).permit(:name, :body)
end
end
