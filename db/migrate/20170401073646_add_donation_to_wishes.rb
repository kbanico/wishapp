class AddDonationToWishes < ActiveRecord::Migration[5.0]
  def change
    add_column :wishes, :donation, :integer, default: 0
  end
end
