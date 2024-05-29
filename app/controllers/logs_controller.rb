class LogsController < ApplicationController
  include LogsHelper

  def index
    @repo = 'https://github.com/binarygit/show-job'
    @commits = File.read('show-job.log').scan(/commit.+\n.+\n.+\n\n.+/)
    @message = "Showing all commits"
  end

  def create
    date = Date.new(params[:date][:year].to_i, params[:date][:month].to_i, params[:date][:day].to_i)
    @commits = File.read('show-job.log').scan(/commit.+\n.+\n.+\n\n.+/)
    @commits = commits_on_date(date, @commits)
    @message = "Showing commits on #{date}"
  end
end
