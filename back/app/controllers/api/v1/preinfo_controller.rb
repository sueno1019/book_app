class Api::V1::PreinfoController < ApplicationController
    protect_from_forgery
    before_action :set_preinfo, only: [:show]
  
    rescue_from ActiveRecord::RecordNotFound do |exception|
      render json: { error: '404 not found' }, status: 404
    end
  
    def index
      preinfos = Preinfo.all
      render json: preinfos
    end
  
    def create
      preinfo = Preinfo.new(preinfo_params)
      if preinfo.save
        render json: preinfo, status: :created
      else
        render json: { errors: preinfo.errors.full_messages }, status: :unprocessable_entity
      end
    end
  
    private
  
    def set_preinfo
      @preinfo = Preinfo.find(params[:id])
    end
  
    def preinfo_params
      params.fetch(:preinfo, {}).permit(:book_id, :question)
    end
  
    def render_status_404(exception)
      render json: { errors: [exception] }, status: 404
    end
  
    def render_status_500(exception)
      render json: { errors: [exception] }, status: 500
    end
  
  
  end
  