class CreateWorkpermits < ActiveRecord::Migration[5.1]
  def change
    create_table :workpermits do |t|
      t.string :first_name
      t.string :last_name
      t.date :start_date
      t.date :end_date
      t.string :status
      t.timestamps
    end
  end
end
