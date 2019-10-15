class ApplicationController < ActionController::Base
  before_action :configure_permitted_parameters, if: :devise_controller?
  before_action :search_ransack
  
  private
    def configure_permitted_parameters
      devise_parameter_sanitizer.permit(:sign_up, keys: [:icon,:nickname])
    end

    def search_ransack
      @q = Review.ransack(params[:q])
      @reviews =  @q.result(distinct: true)

    end

    def  search
      @q = Review.search(search_params)
      @reviews =  @q.result(distinct: true)
    end

    def search_params
      params.require(:q).permit(:title_cont)
    end

end
