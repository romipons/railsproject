class Incident < ActiveRecord::Base
  attr_accessible :description, :priority, :responsible, :subject, :type_of_incident
  validates :subject, :presence =>true
  validates :responsible, :presence =>true
  validates :description, length: { minimum: 2 }
  validates :priority, numericality: { only_integer: true}
  validates :priority, inclusion: {:in => 1..10, :message => "%{value} is not valid for a priority.The range is between 1 to 10" }
  def self.search(search)
	  if search
      search_condition = "%" + search + "%"
	    find(:all, :conditions => ['subject LIKE ? OR description LIKE ? OR responsible LIKE ? OR priority LIKE ? OR type_of_incident LIKE ?', search_condition,search_condition,search_condition,search_condition,search_condition])
	  else
	    find(:all)
	  end
  end
  
end
