class CreateKind < ActiveRecord::Migration[5.1]
  def change
    create_table :kinds do |t|
      t.string :name
    end
  end
end
