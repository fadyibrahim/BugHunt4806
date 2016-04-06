class SessionsController < ApplicationController
helper_method :get_consumer
  def new 
  end
  def create
    @user = User.find_by_email(params[:session][:email])
    if @user && @user.authenticate(params[:session][:password])
      session[:user_id] = @user.id
      redirect_to '/bugs'
    else
      redirect_to '/login'
    end 
  end
  def destroy 
    session[:user_id] = nil 
    redirect_to '/' 
  end

def get_consumer
    client= Octokit::Client.new \
        :client_id => '1077e8c68c6a2c643c1e',
        :client_secret => '560050b9e04dd0d780882ae736367caf7bed6771'
    client.application_authenticated?
    repoissues=client.list_issues( "strangestar/BugHunt4806")
    list=[]
    repoissues.each{|a| print list.push a.inspect}
    return list
#.instance_of? String 
     #JSON.parse(repoissues.to_json)
  end
end
