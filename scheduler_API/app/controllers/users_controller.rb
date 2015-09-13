class UsersController < ApplicationController
  protect_from_forgery with: :null_session
  def index
    if params[:id]
      begin
        target = User.find(params[:id])
        respond_to do |format|
          format.json {render json:User.find(params[:id])}
          format.xml {render xml:User.find(params[:id])}
        end
      rescue Exception
        render :text => ""
      end
    else
        respond_to do |format|
          format.json {render json:User.all}
          format.xml {render xml:User.all}
        end
    end
  end

  def create
    if params[:method] == "delete"
      result = User.delete_all username: params[:username]
      render :text => "Deleted #{result} records."
    elsif params[:method] == "create"
      result = User.create({username: params[:username], password: params[:password], iid: params[:iid]})
      if result
        render :text => "OK"
      else
        render :text => "FAIL"
      end
    else
     render :text => "FAIL"
   end
  end


end
