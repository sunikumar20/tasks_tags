class TasksController < ApplicationController

	before_action :set_task, only: [:update, :destroy]
	def index
		render json: Task.all, status: :ok
	end

	def create
		task = Task.new(task_params)
		if task.save
			render json: task, status: :created
		else
			render json: task.errors, status: :unprocessable_entity
		end
	end

	def update
		if @task.update(task_params)
			render json: @task, status: :created
		else
			render json: @task.errors, status: :unprocessable_entity
		end
	end

	def destroy
		if @task.destroy
			render json: {message: "Successfully Deleted"}, status: :ok
		else
			render json: @task.errors, status: :unprocessable_entity
		end
	end

	private

    def set_task
      @task = Task.find(params[:id])
    end

    def task_params
      params.require(:task).permit(:title, tag_ids: [])
    end
end
