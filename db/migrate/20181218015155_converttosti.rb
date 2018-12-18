class Converttosti < ActiveRecord::Migration[5.2]
  def change
    add_column :lists, :type, :string, null: false
  end
end
