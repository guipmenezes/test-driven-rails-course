require_relative "config/application"
require "rake"

module TempFixForRakeLastComment
  def last_comment
    last_description
  end
end
Rake::Application.send :include, TempFixForRakeLastComment

Rails.application.load_tasks
