class CreateProducts < ActiveRecord::Migration[5.2]
  def change
    create_table :products do |t|
      t.string :collection
      t.string :title
      t.string :model
      t.string :designer
      t.string :year

      t.timestamps
    end
  end
end
