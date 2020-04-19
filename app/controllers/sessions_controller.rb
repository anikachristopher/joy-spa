class SessionsController < ApplicationController

    def index
    end
    
    def new
        @client = Client.new
        render :login
    end

    def create
        @client = Client.find_by(email: params[:client][:email])
        if @client && @client.authenticate(params[:client][:password])
            session[:client_id] = @client.id
            redirect_to  @client
        else
            redirect_to 'login'
        end
    end

    def home
    end

    def destroy
        session.clear
        redirect_to '/'
    end

end
