class ProjectMilestone < ActiveRecord::Base
  belongs_to :milestone
  belongs_to :project, :autosave => true

  validates_presence_of :project_id, :milestone_id, :date

  attr_accessible :project_id, :milestone_id, :accomplished, :date, :description
end
