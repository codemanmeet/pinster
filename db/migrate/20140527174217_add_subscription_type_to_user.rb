class AddSubscriptionTypeToUser < ActiveRecord::Migration
  def change
    add_column :users, :subscription_type, :string, :default=>""
  end
end
