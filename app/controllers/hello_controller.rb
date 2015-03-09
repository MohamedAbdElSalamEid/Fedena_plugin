#Copyright 2010 Foradian Technologies Private Limited
#This product includes software developed at
#Project Fedena - http://www.projectfedena.org/
#
#Licensed under the Apache License, Version 2.0 (the "License");
#you may not use this file except in compliance with the License.
#You may obtain a copy of the License at
#
#  http://www.apache.org/licenses/LICENSE-2.0
#
#Unless required by applicable law or agreed to in writing,
#software distributed under the License is distributed on an
#"AS IS" BASIS, WITHOUT WARRANTIES OR CONDITIONS OF ANY
#KIND, either express or implied.  See the License for the
#specific language governing permissions and limitations
#under the License.
class HelloController < ApplicationController 
  before_filter :login_required 
  #filter_access_to :all


  def index
    # @hello_message = "Mohamed Abd El-Salam Send Data to vew "
    @students = Student.all

  end

  def new
    #@student = Student.new

  end

  def create

    @student = Student.new(params[:student])
    #puts @student
    if @student.save
      flash[:notice] = "Success"

      redirect_to 'http://www.google.com'

    else
      
      #redirect_to 'http://www.google.com'
      #render 'index'
      #render 'new'

    end
  end
 
  private
  def student_params
    params.require(:student).permit(:first_name, :last_name, :admission_no, :admission_date, :date_of_birth, :batch_id)
  end
  
end
