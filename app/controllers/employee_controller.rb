class EmployeeController < ApplicationController
  def details
    @details = Employee.get_employee_details
    render :employee_details
  end
end