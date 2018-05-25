class CommentsController < PostsController

    def new
        @comment = Comment.new
        @post = Post.find(params[:post_id])
    end

    def create
        @comment = Comment.new(comment_params)
        if @comment.save
            redirect_to post_path(@comment.post_id)
        else
            render 'new'
        end
    end

    def edit
        @comment = Comment.find(params[:id])
    end

    def update
        @comment = Comment.find(params[:id])
        if @comment.save
            redirect_to posts/[:post_id]
        else
            render 'new'
        end
    end

    def destroy
        @comment = Comment.find(params[:id])
        @comment.destroy

        redirect_to posts/[:post_id]
    end

    private
    def comment_params
        params.require(:comment).permit(:post_id, :text, :user_id)
    end
end
