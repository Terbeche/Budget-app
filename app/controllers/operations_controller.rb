class OperationsController < ApplicationController

    def index
        @user = User.find(params[:user_id])
        
        @operations = @user.operations

    end

    def show
        @operation = Operation.find(params[:id])
    end

    def new
        @operation = Operation.new
    end

    def create
        @operation = Operation.new(operation_params)
        if @operation.save
            redirect_to @operation
        else
            render 'new'
        end
    end
end
