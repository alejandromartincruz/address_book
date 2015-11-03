class AddFavorite < ActiveRecord::Migration
  def change
  	t.boolean :favorite, :default => false
  end
end
