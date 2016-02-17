class Api::ClientsController < ApplicationController

  skip_before_filter :verify_authenticity_token
  before_filter :fetch_user, :except => [:index, :create]

  def fetch_user
    @client = Client.find_by_id(params[:id])
  end

  def index
    @clients = Client.all
    respond_to do |format|
      format.json { render json: @clients }
      format.xml { render xml: @clients }
    end
  end

  def create
    @client = Client.new(:first_name=>params[:first_name],:last_name=>params[:last_name],:email=>params[:email])
    respond_to do |format|
      if @client.save
        format.json { render json: @client, status: :created }
        format.xml { render xml: @client, status: :created }
      else
        format.json { render json: @client.errors, status: :unprocessable_entity }
        format.xml { render xml: @client.errors, status: :unprocessable_entity }
      end
    end
  end

  def update
    respond_to do |format|
      if @client.update(params[:client].to_h)
        format.json { head :no_content, status: :ok }
        format.xml { head :no_content, status: :ok }
      else
        format.json { render json: @client.errors, status: :unprocessable_entity }
        format.xml { render xml: @client.errors, status: :unprocessable_entity }
      end
    end
  end

  def destroy
    respond_to do |format|
      if @client.destroy
        format.json { head :no_content, status: :ok }
        format.xml { head :no_content, status: :ok }
      else
        format.json { render json: @client.errors, status: :unprocessable_entity }
        format.xml { render xml: @client.errors, status: :unprocessable_entity }
      end
    end
  end

  private

  def client_params
    params.require(:client).permit(:first_name, :last_name, :email)
  end
end
