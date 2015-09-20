class AddAgeToFamilymembers < ActiveRecord::Migration
  def change
    add_column :familymembers, :age, :text
  end
end
