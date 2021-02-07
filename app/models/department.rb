class Department < ActiveRecord::Base
  self.table_name="departments"
  self.primary_key="id"
  has_many :employee,
    :primary_key => :dept_id,:foreign_key => :dept_id
end