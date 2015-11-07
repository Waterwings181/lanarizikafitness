class HomeController < ApplicationController
  def index
    @articles = Article.order('created_at DESC')
    @testimonials = Testimonial.order('created_at DESC')
  end
end
