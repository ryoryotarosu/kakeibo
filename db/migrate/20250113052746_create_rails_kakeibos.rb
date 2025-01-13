class CreateRailsKakeibos < ActiveRecord::Migration[7.1]
  def change
    create_table :rails_kakeibos do |t|
      t.string :gougin_money
      t.string :rakuten_money
      t.string :gougin_salary, default: 0
      t.string :rakuten_salary, default: 0
      t.string :rent, default: 0
      t.string :sbi_stock, default: 0
      t.string :ideco_stock, default: 0
      t.string :nisa_stock, default: 0
      t.string :jcb_card, default: 0
      t.string :rakuten_card, default: 0
      t.string :gasoline, default: 0
      t.string :cash, default: 0
      t.string :others, default: 0

      t.timestamps
    end
  end
end
