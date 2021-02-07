class CreateEmployee < ActiveRecord::Migration
  def change
    create_table :employees do |t|
      t.string :fname
      t.string :lastname
      t.string :email
      t.integer :phone
      t.float :salary
      t.integer :dept_id
    end
  end
end
