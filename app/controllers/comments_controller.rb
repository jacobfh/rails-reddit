class CommentsController < ApplicationController

    def new
        @comment = Comment.new
    end

    def create
    end

    def edit
        @comment = Comment.find(params[:id])
    end

    def update
    end

    def destroy
    end



end
