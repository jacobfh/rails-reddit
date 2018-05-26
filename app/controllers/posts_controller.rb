class PostsController < ApplicationController
    def index
        @posts = Post.all
    end

    def new
        if current_user
            @post = Post.new
        else
            redirect_to new_login_path, alert: "Please log in first."
        end
    end

    def create
        @post = Post.new(post_params)
        if @post.save
         redirect_to @post
        else
         render 'new'
       end
    end

    def edit
        @post = Post.find(params[:id])
        if current_user
            if current_user.id == @post.user_id
                @post = Post.find(params[:id])
            else
                redirect_to @post, alert: 'Only post creator can edit.'
            end
        else
            redirect_to new_login_path, alert: "Please log in first."
        end
    end

    def update
        @post = Post.find(params[:id])
        if @post.update(post_params)
          redirect_to @post
        else
          render 'edit'
        end
    end

    def show
        @post = Post.find(params[:id])
    end

    def delete
        @post = Post.find(params[:id])
        @post.destroy

        redirect_to posts_path
    end

    def upvote
        @post = Post.find(params[:id])
        @post.votes.create
        redirect_to(posts_path)
      end

    private
    def post_params
        params.require(:post).permit(:title, :text, :user_id)
    end
end
