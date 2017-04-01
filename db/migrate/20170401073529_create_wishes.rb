class CreateWishes < ActiveRecord::Migration[5.0]
  def change
    create_table :wishes do |t|
      t.text :message

      t.timestamps
    end
  end
end
