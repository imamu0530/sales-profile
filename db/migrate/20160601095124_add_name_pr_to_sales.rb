class AddNamePrToSales < ActiveRecord::Migration
  def change
    add_column :sales, :name, :string
    add_column :sales, :pr, :string
  end
end
