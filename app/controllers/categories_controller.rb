class CategoriesController < ApplicationController


  # before_action :require_admin, except: [:index, :show]

    def index
    @categories = Category.paginate(page: params[:page], per_page: 5)
  end

  def new
    @category = Category.new
  end

  def create
    @category = Category.new(category_params)
    if @category.save
      flash[:success] = "Category wes created successfully"
      redirect_to category_path(@category)
    else
      render'new'
    end
  end

  def show

  end

  private
  def category_params
    params.require(:category).permit(:name)
  end

  # def require_admin
  #   if !logged_in?
  #     flash[:danger] = " only admins can perform that action"
  #     redirect_to category_path
  #
  #   end
  # end

end