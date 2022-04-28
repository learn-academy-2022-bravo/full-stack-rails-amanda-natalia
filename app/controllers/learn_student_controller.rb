class LearnStudentController < ApplicationController

    def index
       @weeks = LearnStudent.all 
    end

    def show 
        @week = LearnStudent.find(params[:id])
    end 

    def new
        @week = LearnStudent.new
    end

    def create
        @week = LearnStudent.create(week_params)
        if @week.valid?
            redirect_to weeks_path
        end
    end

    private
    def week_params
        params.require(:learn_student).permit(:title, :content)
      end
end
