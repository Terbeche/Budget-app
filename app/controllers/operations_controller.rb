class OperationsController < ApplicationController
  def index
    @operations = current_user.operations
  end

  def show
    @operation = Operation.find(params[:id])
  end

  def new
    @operation = Operation.new
    respond_to do |format|
      format.html { render :new, locals: { operation: @operation } }
    end
  end

  def create
    @operation = current_user.operations.new(operation_params)
    if @operation.save
      redirect_to user_operation_path(@operation.author_id, @operation.id)
    else
      render 'new'
    end
  end

  def operation_params
    params
      .require(:operation)
      .permit(:name, :amount, :group_id)
      .merge(author: current_user)
  end
end
