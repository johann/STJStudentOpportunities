class CreateScholarships < ActiveRecord::Migration
  def change
    create_table :scholarships do |t|
      t.string :org
      t.string :schol
      t.text :descrip
      t.float :gpa
      t.string :infourl
      t.string :appyurl

      t.timestamps
    end
  end
end
