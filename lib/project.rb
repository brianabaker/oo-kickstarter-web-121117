require_relative "backer"
require 'pry'

class Project
  attr_accessor :backers
  attr_reader :title

  def initialize(title)
    @title = title
    @backers = []
  end

  def add_backer(backer)
    @backers << backer
    @backers.each_with_index do |backer, idx|

      @backers[idx].backed_projects << self
    end
  end


end
