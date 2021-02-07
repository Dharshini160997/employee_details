class Employee < ActiveRecord::Base
  self.table_name="employees"
  belongs_to :department,
  :primary_key => :dept_id, :foreign_key => :dept_id
  def self.get_employee_details
    emp_details=[]
    details = Employee.includes(:department)
    details.each do |emp|
      emp_details.push(
        {
          "first name" => emp['fname'],
          "last name" => emp['lastname'],
          "email" => emp['email'],
          "phone" => emp['phone'],
          "salary" => emp['salary'],
          "dept_name" => emp.department.dept_name
        }
      )
    end
    emp_details
  end
end