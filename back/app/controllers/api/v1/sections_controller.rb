class Api::V1::SectionsController < ApplicationController
    before_action :set_section, only: [:index]
  
    rescue_from ActiveRecord::RecordNotFound do |exception|
      render json: { error: '404 not found' }, status: 404
    end

    def index
      render json:  @section 
    end
  
    def create
      section = Section.new(section_params)
      if section.save
        render json: section, status: :created
      else
        render json: { errors: section.errors.full_messages }, status: :unprocessable_entity
      end
    end
  
    private
  
    def set_section
      @section = Section.where(book_id: params[:id])
    end
  
    def section_params
      params.fetch(:section, {}).permit(:name, :sec_num)
    end
  
    def render_status_404(exception)
      render json: { errors: [exception] }, status: 404
    end
  
    def render_status_500(exception)
      render json: { errors: [exception] }, status: 500
    end
  
  
  end
  