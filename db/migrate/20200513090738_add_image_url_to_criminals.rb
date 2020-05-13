class AddImageUrlToCriminals < ActiveRecord::Migration[6.0]
  def change
    add_column :criminals, :image_url, :string
  end
end
