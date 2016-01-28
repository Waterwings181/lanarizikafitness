class HomeController < ApplicationController
  def index
    @articles = Article.order('created_at DESC')
    @testimonials = Testimonial.order('created_at DESC')
  end
  def contact
    ContactMailer.new_contact_email(params[:email], params[:message], params[:name]).deliver_later
    redirect_to root_path, notice: 'Message was successfully sent.'
  end
  private
    # Never trust parameters from the scary internet, only allow the white list through.
    def contact_params
      params.require(:contact).permit(:email, :message, :name)
    end
end
