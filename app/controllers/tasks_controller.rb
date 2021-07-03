class TasksController < ApplicationController
    before_action :find_task, only: [:show, :edit, :update, :destroy]
    
    def index
	    @tasks = Task.all
    end

    def show
    end

    def new
		@tasks = Task.new
		#form to send = authenticity token (need to add hidden fiel tag in the form.html)
    end

	def create
		@restaurants = Restaurant.new(params[:restaurant])
		@restaurant.save
		redirect_to restaurant_path(@restaurant) #using the strong params
	 #don't need to recreate and update the form, use form_for in the html
	end

    private
    def find_task
       @task = Task.find(params[:id])
    end
end
