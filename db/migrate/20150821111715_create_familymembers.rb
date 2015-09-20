class CreateFamilymembers < ActiveRecord::Migration
  def change
    create_table :familymembers do |t|
      t.string :name
      t.string :gender
      t.date :birth_date
      t.text :description

      t.timestamps null: false
    end
  end
end
