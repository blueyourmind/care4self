class AddRecipientToUsers < ActiveRecord::Migration[7.0]
  def change
    add_reference :users, :recipient, foreign_key: true
  end
end
