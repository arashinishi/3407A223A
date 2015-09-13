class UsersController < ApplicationController
  def index
    respond_to do |format|
      format.html
      format.json {render json:User.all}
      format.xml {render xml:User.all}
    end
  end
end
