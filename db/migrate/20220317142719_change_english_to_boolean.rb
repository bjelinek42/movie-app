class ChangeEnglishToBoolean < ActiveRecord::Migration[7.0]
  def change
    change_column :movies, :english, "boolean USING english::boolean"
  end
end
