class AddHomeInspectionRatingToProvider < ActiveRecord::Migration[5.0]
  def change
    add_column :providers, :home_inspection_rating, :string
  end
end
