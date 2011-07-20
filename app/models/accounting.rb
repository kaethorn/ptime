class Accounting < ActiveRecord::Base
  belongs_to :project

  validates_presence_of :project_id, :amount, :valuta

  attr_accessible :sent, :project_id, :amount, :valuta, :description, :link, :payed
end
