class RemoveUserIdFromTransactions < ActiveRecord::Migration[6.1]
  def change
    remove_column :transactions, :user_id
  end
end
