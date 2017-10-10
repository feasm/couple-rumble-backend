class PackagesController < ApplicationController
  before_action :get_package, only: [:show, :edit]

  def index
    @packages = Package.all.order('created_at DESC')

    render :json => @packages
  end

  def show
    return_package
  end

  def edit
    return_package
  end

  private
    def get_package
      @package = Package.find(params[:id])
    end

    def return_package
      render :json => @package
    end
end
