class CreateStudentorgs < ActiveRecord::Migration
  def change
    create_table :studentorgs do |t|
      t.string :name
      t.text :description
      t.float :gpa
      t.string :infourl
      t.string :applyurl

      t.timestamps
    end
  end
end
