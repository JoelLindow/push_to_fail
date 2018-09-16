class CreateFailures < ActiveRecord::Migration[5.1]
  def change
    create_table :failures do |t|
      t.text :kind
      t.integer :count

      t.timestamps
    end
  end
end
