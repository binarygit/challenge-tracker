module LogsHelper
  def author(commit)
    commit.scan(/Author[^>]+>/).first.gsub(/Author: /, '').strip
  end

  def message(commit)
    commit.match(/\n\n.+/).to_s.strip
  end

  def dates(commits)
    commits.map { Date.parse(_1.match(/Date[^\+]+/).to_s.gsub(/Date:/, '').strip) }.uniq
  end

  def commits_on_date(date, commits)
    commits.select do |commit|
      date == get_date(commit)
    end
  end

  private

  def get_date(commit)
    commit.scan(/Date[^\+]+/).map { Date.parse(_1.gsub(/Date:/, '').strip) }.first
  end
end
