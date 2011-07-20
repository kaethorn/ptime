class CreateProjectMilestones < ActiveRecord::Migration
  def self.up
    create_table :project_milestones do |t|
      t.integer :project_id
      t.integer :milestone_id
      t.string :description
      t.datetime :date
      t.boolean :accomplished

      t.timestamps
    end
  end

  def self.down
    drop_table :project_milestones
  end
end
