class TodosController < ApplicationController
  before_action :set_todo, only: [:edit, :update, :destroy, :toggle]

  def index
    @current_user = current_user if current_user
    @users = User.all
  end

  # GET /todos/new
  def new
    @todo = Todo.new
    respond_to do |format|
      format.html { redirect_to root_path}
      format.js { }
    end
  end

  # POST /todos
  # POST /todos.json
  def create
    @todo = Todo.new(todo_params)
    respond_to do |format|
      if @todo.save
        flash[:notice] = 'Todo was successfully created.'
        format.html { redirect_to root_path }
        format.js { }
      else
        format.html { render :new }
      end
    end
  end

    # GET /todos/1/edit
  def edit
    respond_to do |format|
      format.html { render :edit}
      format.js {}
    end
  end

  # PATCH/PUT /todos/1
  # PATCH/PUT /todos/1.json
  def update
    respond_to do |format|
      if @todo.save
        flash[:notice] = "#{@todo.title} has been marked finished"
        format.html { redirect_to root_path }
        format.js { }
      else
        format.html { render :edit }
      end
    end
  end

  def toggle
    @todo.finished == false ? toggle = true : toggle = false
    @todo.update_attributes(finished: toggle)
    respond_to do |format|
      if @todo.finished == toggle
        format.html { redirect_to root_path }
        format.js { }
      else 
        flash[:alert] = "the todo was not marked finished" 
        format.html { redirect_to root_path, status: :unprocessed } 
      end
    end
  end

  # DELETE /todos/1
  # DELETE /todos/1.json
  def destroy
    @todo.destroy
    respond_to do |format|
      flash[:notice] = "#{@todo.title} was deleted"
      format.html { redirect_to root_path }
      format.js { }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_todo
      @todo = Todo.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def todo_params
      params.require(:todo).permit(:title, :body, :finished)
    end
end
