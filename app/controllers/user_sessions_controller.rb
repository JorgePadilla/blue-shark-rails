class UserSessionsController < ApplicationController
    skip_before_action :require_login, only: :new

    def new
    end
end
