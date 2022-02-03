class AddDateToBook < ActiveRecord::Migration[6.1]
  def change
    add_column :books, :date_released, :date
  end
end
