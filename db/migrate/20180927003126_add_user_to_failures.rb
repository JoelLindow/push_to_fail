class AddUserToFailures < ActiveRecord::Migration[5.1]
  def change
    add_reference :failures, :user, foreign_key: true
  end
end
