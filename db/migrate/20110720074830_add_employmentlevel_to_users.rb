class AddEmploymentlevelToUsers < ActiveRecord::Migration
  def self.up
    add_column :users, :employmentlevel, :integer
  end

  def self.down
    remove_column :users, :employmentlevel
  end
end
