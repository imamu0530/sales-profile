class AddTelMyselfPolicyToSales < ActiveRecord::Migration
  def change
    add_column :sales, :tel, :string
    add_column :sales, :myself, :text
    add_column :sales, :policy, :text
    add_column :sales, :genre, :string
    add_column :sales, :carrer, :text
    add_column :sales, :office, :text
    add_column :sales, :private, :text
  end
end
