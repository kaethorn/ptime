# Import users
(1..10).each do |num|
  User.create!(:username => "admin_#{num}", 
               :password => 'admin_goodness', 
               :email => "admin_mail_#{num}@example.com") do |user|
    user.admin=true
  end
  User.create!(:username => "user#{num}", :password => 'let_me_in', 
               :email => "mail_#{num}@example.com")
end


# Import project states
project_states = ["offered", "won", "running", "closed", "lost", 
  "closing", "permanent"]

project_states.each do |project_state|
  p = ProjectState.new
  p.name = project_state
  p.save!
end


# Import demo projects
project_states_count = ProjectState.all.count
(1..10).each do |num|
  rnd_project_state = ProjectState.all[rand(project_states_count)]
  Project.create!(:shortname => "prj-%03d" % num,
                  :description => "description #{num}",
                  :inactive => [true,false].shuffle.shift,
                  :project_state_id => rnd_project_state.id,
                  :start => Date.today, 
                  :end => Date.today) do |project|
    (1..10).each do |project_id|
      Task.create!(:name => "task_#{num}", :project_id => project_id)
    end
  end
end


# Import milestones
milestones = ["presales", "sales", "question submission", "offer submission", "offer presentation", "debriefing", "kickoff", "release", "production start", "final project report", "project review", "project end" ]

milestones.each do |milestone|
  p = Milestone.new
  p.name = milestone
  p.save!
end


# Import project_milestones
projects = Project.all
projects_count = projects.count
milestones = Milestones.all
milestone_count = milestones.count
(1..10).each do |num|
  rnd_project = projects[rand(projects_count)]
  rnd_milestone = projects[rand(milestones_count)]
  p = ProjectMilestone.new
  p.project_id = rnd_project.id
  p.milestone_id = rnd_milestone.id
  p.description = "milestone description #{num}"
  p.date => Date.today - rand(20)
  p.accomplished = [true,false].shuffle.shift
  p.save!
end


# Import accountings
(1..10).each do |num|
  rnd_project = projects[rand(projects_count)]
  p = Accounting.new
  p.description = "position description #{num}"
  p.amount = rand(100000)
  p.valuta = Date.today - rand(20)
  p.project_id = rnd_project.id
  p.sent = [true,false].shuffle.shift
  p.payed = [true,false].shuffle.shift
  p.link = "http://link.to.position.#{num}"
  p.save!
end


# Import rpl/plans
users = User.all
users_count = users.count
(1..10).each do |num|
  rnd_user = users[rand(users_count)]
  rnd_project = projects[rand(projects_count)]
  p = Plan.new
  p.user_id = rnd_user.id
  p.project_id = rnd_project.id
  p.amount = rand(10)
  p.kw = Date.today - rand(10)
  p.save!
end
