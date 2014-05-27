class RemoveSubscriptionTypeFromPins < ActiveRecord::Migration
  def change
    remove_column :pins, :subscription_type, :string
  end
end
