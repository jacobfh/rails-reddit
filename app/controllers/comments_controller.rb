class CommentsController < PostsController

    def show
        @comment = Comment.find(params[:id])
    end


    def new
        @post = Post.find(params[:post_id])
        if current_user
            @comment = Comment.new
        else
            redirect_to post_path(@post), alert: "You must be logged in to comment."
        end
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
        if current_user.id == @comment.user_id
            @post = Post.find(params[:post_id])
        else
            redirect_to post_path(@comment.post_id), alert: 'Only comment creator can edit.'
        end
    end

    def update
        @comment = Comment.find(params[:id])
        if @comment.save
            redirect_to post_path(@comment.post_id)
        else
            render 'new'
        end
    end

    def destroy
        @comment = Comment.find(params[:id])
        @id = @comment.post_id
        if current_user.id == @comment.user_id
            @comment.destroy
            redirect_to post_path(@id)
        end
    end

    private
    def comment_params
        params.require(:comment).permit(:post_id, :text, :user_id)
    end
end
