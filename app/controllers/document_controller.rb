class DocumentController < ApplicationController

  def create
    @document = Document.create(params[:document])
  end

  def index
  end
end
