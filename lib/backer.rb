class Backer
  attr_reader :name, :backed_projects
  
  def initialize(name)
    @name = name
    @backed_projects = []
  end
  
  def back_project(project)
    @backed_projects << project
    # adds project instance to project array of backer class
    project.add_backer(self) unless project.backers.include?(self)
    # adds backer instance to backer array of project class
    # if backer instance isn't already there
  end
end