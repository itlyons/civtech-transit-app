class ReportsController < ApplicationController
  def index
    @reports = Report.order('created_at DESC')
  end

  def new
    @report = Report.new
  end

  def create
    @report = Report.new(report_params)
    if @report.save
      flash[:success] = "Report added!"
      redirect_to root_path
    else
      render 'new'
    end
  end

  private

  def report_params
    params.require(:report).permit(:complaint, :visited_by)
  end
end
