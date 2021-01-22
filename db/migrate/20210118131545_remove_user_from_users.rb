# frozen_string_literal: true

class RemoveUserFromUsers < ActiveRecord::Migration[6.1]
  def change
    remove_column :users, :username
  end
end
