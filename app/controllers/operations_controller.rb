class OperationsController < ApplicationController
  def index
    @operations = current_user.operations
  end

  def show
    @operation = Operation.find(params[:id])
  end

  def new
    @groups = current_user.groups.all
    @group = Group.find(params[:group_id])
    @operation = Operation.new
    respond_to do |format|
      format.html { render :new, locals: { operation: @operation } }
    end
  end

  def create
    @operation = current_user.operations.new(operation_params)
    # @operation = Operation.new(params[:operation])

    params[:groups].each do |k, _v|
      @group = Group.find(k)
      @operation.groups << Group.find(k)
    end
    if @operation.save
      redirect_to user_group_path(current_user, @group.id)
    else
      render 'new'
    end
  end

  def operation_params
    params
      .require(:operation)
      .permit(:name, :amount)
      .merge(author: current_user)
  end
end
