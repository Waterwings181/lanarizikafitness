json.array!(@testimonials) do |testimonial|
  json.extract! testimonial, :id, :quote, :name
  json.url testimonial_url(testimonial, format: :json)
end
