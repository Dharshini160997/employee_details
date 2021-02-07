class CreateDepartment < ActiveRecord::Migration
  def change
    create_table :departments do |t|
      t.integer :dept_id
      t.string :dept_name
    end
  end
end
