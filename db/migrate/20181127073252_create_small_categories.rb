class CreateSmallCategories < ActiveRecord::Migration[5.2]
  def change
    create_table :small_categories do |t|
      t.string :name,index: true , null:false

      t.timestamps
    end
  end
end
