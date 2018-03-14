class AddGenderAndBirthdayToSpreeAddress < ActiveRecord::Migration[5.0]
  def change
    add_column :spree_addresses, :gender, :string
    add_column :spree_addresses, :neighborhood, :string
  end
end
