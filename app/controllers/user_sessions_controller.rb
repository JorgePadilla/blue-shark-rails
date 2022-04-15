class UserSessionsController < ApplicationController
    skip_before_action :require_login, only: :new

    def new
    end

    def destroy
      logout
      redirect_to root_path, status: :see_other, notice: "You have logged out"
    end
end
