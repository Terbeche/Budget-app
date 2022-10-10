class GroupsController < ApplicationController
    def index
        @groups = current_user.groups
    end

    def show
        
        @group = Group.find(params[:id])

    end

    def new
        @group = Group.new
        respond_to do |format|
            format.html { render :new, locals: { group: @group } }
        end
    end

    def create
        @group = current_user.groups.new(group_params)
        if @group.save
            redirect_to user_group_path(@group.user_id, @group.id)
        else
            render 'new'
        end
    end
    
    def group_params
        params
        .require(:group)
        .permit(:name, :icon)
        .merge(author: current_user)
    end
end
