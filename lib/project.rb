class Project 
  attr_reader :title, :backers
  
  def initialize(title)
    @title = title
    @backers = []
  end
  
  def add_backer(backer)
    @backers << backer # adds backer instance to backer array of project class
    backer.back_project(self) unless backer.backed_projects.include?(self)
    # calls #back_project on this instance
  end
end