class CreateTestimonials < ActiveRecord::Migration
  def change
    create_table :testimonials do |t|
      t.string :quote
      t.string :name

      t.timestamps null: false
    end
  end
end
