class GroupsController < ApplicationController
    def index
        @groups = Group.all
    end

    def show
        @user = User.find(params[:user_id])
        @group = @user.groups

    end

    def new
        @group = Group.new
    end

    def create
        @group = Group.new(group_params)
        if @group.save
            redirect_to @group
        else
            render 'new'
        end
    end
end
