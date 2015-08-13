class GraphicsController < ApplicationController
  def graphics

  	 
	  
    @incident = Incident.all
	@prio1 = Incident.where( priority: 1)
	@prio2 = Incident.where( priority: 2)
	@prio3 = Incident.where( priority: 3)
	@prio4 = Incident.where( priority: 4)
	@prio5 = Incident.where( priority: 5)
	@prio6 = Incident.where( priority: 6)
	@prio7 = Incident.where( priority: 7)
	@prio8 = Incident.where( priority: 8)
	@prio9 = Incident.where( priority: 9)
	@prio10 = Incident.where( priority: 10)

	@types = [Incident.where(type_of_incident: 'Problem'), Incident.where(type_of_incident: 'Support'), Incident.where(type_of_incident: 'Bug'), Incident.where(type_of_incident: 'Error')]
	

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @incident }



      
  end
  end
end
