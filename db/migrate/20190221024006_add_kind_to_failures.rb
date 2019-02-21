class AddKindToFailures < ActiveRecord::Migration[5.1]
  def change
    add_reference :failures, :kind, foreign_key: true
  end
end
