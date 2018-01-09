class AddDescriptionToProvider < ActiveRecord::Migration[5.0]
  def change
    add_column :providers, :description, :text
  end
end
