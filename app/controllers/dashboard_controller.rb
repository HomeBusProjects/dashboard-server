class UsersController < ApplicationController
#  before_action :authenticate_user!

  def index
    @cameras = Camera.all
  end
end
