class CommentsController < ApplicationController
    def create
      @task = Task.find(params[:task_id])
      @comment = @task.comments.build(comment_params)

      if @comment.save
        redirect_to @task, notice: "Comment added."
      else
        redirect_to @task, alert: "Comment can't be blank."
      end
    end

    private

    def comment_params
      params.require(:comment).permit(:content)
    end
end
