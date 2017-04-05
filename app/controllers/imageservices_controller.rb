class ImageservicesController < ApplicationController
  before_action :set_imageservice, only: [:show]
#-------------------------------------------------------------Cross Origin Resource Sharing--------------------------------------
before_filter :cors_preflight_check
after_filter :cors_set_access_control_headers 

def cors_set_access_control_headers
    headers['Access-Control-Allow-Origin'] = '*'
    headers['Access-Control-Allow-Methods'] = 'POST, GET, PUT, DELETE, OPTIONS'
    headers['Access-Control-Allow-Headers'] = 'Origin, Content-Type, Accept, Authorization, Token'
    headers['Access-Control-Max-Age'] = "1728000"
  end

  def cors_preflight_check
    if request.method == 'OPTIONS'
      headers['Access-Control-Allow-Origin'] = '*'
      headers['Access-Control-Allow-Methods'] = 'POST, GET, PUT, DELETE, OPTIONS'
      headers['Access-Control-Allow-Headers'] = 'X-Requested-With, X-Prototype-Version, Token'
      headers['Access-Control-Max-Age'] = '1728000'

      render :text => '', :content_type => 'text/plain'
    end
  end

#------------------------------------------------------------------------------------------------------------------------------  
  
  # GET /imageservices/1
  def show
    render json: @imageservice
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_imageservice
      @imageservice = Imageservice.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def imageservice_params
      params.require(:imageservice).permit(:catentry_id, :imageURLs)
    end
	
end
