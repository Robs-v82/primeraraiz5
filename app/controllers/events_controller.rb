class EventsController < ApplicationController
  layout false
  after_action :remove_operation_message, only: [:new]
  after_action :remove_event_message, only: [:new]

  def new
  	@states=State.all
  	@municipalities=Municipality.all
  	@types_of_place=["Vía pública urbana","Brecha rural","Carretera","Domicilio","Zona rural","No aplica","Aeropuerto"].sort
  	@types_of_events=["Agresión", "Operación","Enfrentamiento","Persecusión","Mensaje","Desplazamiento","Detención arbitraria"].sort
    @types_of_aggressors=["Autoridad", "Crimen organizado", "Grupo sin filiación", "Habitantes de la comunidad", "Individuo"]
    @operations=Operation.all
    @scopes=["Local","Municipal","Estatal","Regional"]
    if session[:new_operation]
      @operation_success = true
    end
    if session[:operation_errors]
      @operation_errors = session[:operation_errors] 
    end
    if session[:new_event]
      @event_success = true
    end
    if session[:event_errors]
      @event_errors = session[:event_errors] 
    end
  end

  def getSubtypes
    if getSubtypes_params[:type_of_event]=="Agresión"
      print getSubtypes_params[:type_of_event]*20
      subtypeArr=["Levantón","Daño a vivienda","Golpiza","Ataque a autoridad","Amenaza","Homicidio","Daño a comercio"].sort
    elsif getSubtypes_params[:type_of_event]=="Operación"
      subtypeArr=["Detención","Cateo","Inhabilitar toma clandestina","Decomiso","Erradicación de cultivo","Redada","Rescate","Reacción"].sort
    elsif getSubtypes_params[:type_of_event]=="Enfrentamiento"
      subtypeArr=["Ataque a autoridad","Entre grupos"].sort
    elsif getSubtypes_params[:type_of_event]=="Persecusión"
      subtypeArr=["Ataque a autoridad","Entre grupos"].sort
    elsif getSubtypes_params[:type_of_event]=="Mensaje"
      subtypeArr=["Amenaza","Entre grupos","Presencia"].sort
    elsif getSubtypes_params[:type_of_event]=="Desplazamiento"
      subtypeArr=["Salida empresarios"].sort
    elsif getSubtypes_params[:type_of_event]=="Detención arbitraria"
      subtypeArr=[].sort  
    end
    render json: {subtypes: subtypeArr}
  end

  def getMunicipalities
    targetState = getMunicipalities_params[:clave_estado]
    targetMunicipalities = Municipality.where("clave_estado='#{targetState}'").order(:munici)
    render json: {municipalities: targetMunicipalities}
  end

  def getStateMunicipalities
    targetState = getStateMunicipalities_params[:clave_estado]
    targetMunicipalities = Municipality.where("clave_estado='#{targetState}'").order(:munici)
    render json: {municipalities: targetMunicipalities}
  end

  def create
    long_date = event_params[:date]
    target_date = set_date(long_date)
    event_info = event_params
    unless event_info[:serial_no].present?
      if Event.last.present?
        x = Event.all.order("serial_no DESC").first.serial_no.to_i
        x = x+1
        event_info.store("serial_no", x)
      else
        x = 1
        event_info.store("serial_no", x)
      end
    end
    event_info.delete("date")
    event_info.store("date",target_date)
    new_event = Event.new(event_info)
    if new_event.valid?
      new_event.save
      session[:new_event] = true
    else
      session[:event_errors] = new_event.errors.full_messages
    end
    redirect_to "/events/new"
  end

  def update
  end

  def create_operation
    session[:new_operation] = false
    session[:operation_errors] = false
    long_date = operation_params[:date]
    unless long_date.blank? 
      target_date = set_date(long_date)    
    end
    operation_info = operation_params
    operation_info.delete("date")
    operation_info.store("date",target_date)
    new_operation = Operation.new(operation_info)
    if new_operation.valid?
      new_operation.save
      session[:new_operation] = true
    else
      session[:operation_errors] = new_operation.errors.full_messages
    end
    print session[:operation_errors]
    redirect_to "/events/new"
  end

  private

  def event_params
    params.require(:event).permit(:serial_no, :operation_id, :municipality_id, :type_of_place, :reference, :zip, :date, :source, :type_of_event, :subtype_of_event, :target_organization, :type_of_aggressor, :aggressor_name, :identity, :notes) 
  end

  def operation_params
    params.require(:operation).permit(:date, :municipality_id, :name, :source, :scope, :location, :manpower, :goals, :clave_estado, :sedena, :semar, :pf, :prg, :state_in, :municipality_in)
  end


  def getMunicipalities_params
    params.require(:event).permit(:clave_estado)
  end

  def getStateMunicipalities_params
    params.require(:operation).permit(:clave_estado)
  end

  def getSubtypes_params
    params.require(:event).permit(:type_of_event)
  end

end
