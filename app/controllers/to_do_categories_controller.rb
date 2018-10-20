class ToDoCategoriesController < ApplicationController
		before_action :logged_in?
	
	def index
	  @categories = @current_user.to_do_categories.order(:sort)	
	end

	def new
	  @category  = ToDoCategory.new	
	end

	def create
      @categories = @current_user.to_do_categories.new(to_do_category_params)
      if @categories.save
        flash[:notice] = "To Do created successfully."
        redirect_to 
      end 		
	end

	def completed
		@category  = ToDoCategory.find_by(id: params[:id])
		if @category.status?
           @category.update(status: false)
		else
		  @category.update(status: true)	
		end

	end

	private
	def to_do_category_params
		params.require(:to_do_category).permit(:title, :due_date, :sub_category_id)
	end
end
