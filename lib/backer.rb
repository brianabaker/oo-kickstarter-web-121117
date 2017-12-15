require_relative "project"
require 'pry'

class Backer

  attr_accessor :backed_projects
  attr_reader :name

  def initialize(name)
    @name = name
    @backed_projects = []

  end

  def back_project(project)
    @backed_projects << project
    @backed_projects.each_with_index do |pr, idx|
      @backed_projects[idx].backers << self
    end
  end

end
