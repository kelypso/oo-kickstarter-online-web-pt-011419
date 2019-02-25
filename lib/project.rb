class Project 
  attr_reader :title, :backers
  
  def initialize(title)
    @title = title
    @backers = []
  end
  
  def add_backer(backer)
    @backers << backer 
    # adds backer instance to backer array of project class
    backer.back_project(self) unless backer.backed_projects.include?(self)
    # adds project instance to project array of backer class
    # if project instance isn't already therel
  end
end