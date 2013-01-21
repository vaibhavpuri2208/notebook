class CreateAhas < ActiveRecord::Migration
  def change
    create_table :ahas do |t|
      t.string :note

      t.timestamps
    end
  end
end
