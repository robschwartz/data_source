class AddHomeTypeToProvider < ActiveRecord::Migration[5.0]
  def change
    add_column :providers, :home_type, :string
  end
end
