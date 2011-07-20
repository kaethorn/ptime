class Project < ActiveRecord::Base
  belongs_to :project_state
  has_many :tasks, :dependent => :destroy
  has_many :project_milestones, :dependent => :destroy
  has_many :accountings
  has_many :plans

  accepts_nested_attributes_for :tasks, :project_state, :reject_if => lambda { |task| task[:name].blank? }

  validates_presence_of :shortname, :description, :start, :end, :project_state

  validates_format_of :shortname, :with => /^\w{3}-\d{3}$/

  attr_accessible :shortname, :description, :start, :end, :inactive, :state,
    :task_ids, :tasks_attributes, :project_state_id, :project_state_attributes

  scope :active, where(:inactive => false)

  def set_default_tasks
    APP_CONFIG['default_tasks'].each do |task_name|
      self.tasks << Task.new(:name => task_name)
    end
  end

end
