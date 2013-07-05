class PagesController < ApplicationController
  before_action :set_page, only: [:show]
  #add_crumb :page, only: "show"

  # GET /pages/1
  # GET /pages/1.json
  def show
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_page
      @page = Page.friendly.find(params[:id])
      add_crumb @page.title
      render 'shared/404', :status => 404 if @page.nil?
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def page_params
      params.require(:page).permit(:title, :slug, :content)
    end
end
