class CreateReviews < ActiveRecord::Migration
  def change
    create_table :reviews do |t|
      t.string  :title
      t.text  :review
      t.string  :place
      t.timestamps null: false
    end
  end
end
