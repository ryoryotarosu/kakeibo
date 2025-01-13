class AddColumnDate < ActiveRecord::Migration[7.1]
  def change
    add_column :rails_kakeibos, :date, :date
  end
end
