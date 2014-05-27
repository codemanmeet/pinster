class AddSubscriptionTypeToPins < ActiveRecord::Migration
  def change
    add_column :pins, :subscription_type, :string
  end
end
