class LogsController < ApplicationController
  def index
    @repo = 'https://github.com/binarygit/show-job'
    @commits = File.read('show-job.log').scan(/commit.+\n.+\n.+\n\n.+/)
    @message = "Showing all commits"
  end

  def new
  end
end
