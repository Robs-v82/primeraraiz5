class EventsController < ApplicationController
  layout false
  after_action :remove_operation_message, only: [:new]
  after_action :remove_event_message, only: [:new]
  after_action :remove_event_destroyed_message, only: [:new]

  def new
  	@events = Event.all.order("created_at DESC")
    my_events = Event.all.order("created_at DESC").limit(5)
    @targetEvents = []
    @events.each do |event|
      x = []
      x.push(event.serial_no)
      x.push(event.date)
      targetMun = event.municipality
      x.push(targetMun.munici)
      targetState = State.where(:clave_estado=>targetMun.clave_estado).last
      x.push(targetState.estado)
      x.push(event.source)
      x.push(event.id)
      @targetEvents.push(x)
    end
    @states=State.all
  	@municipalities=Municipality.all
  	@types_of_place=["Vía pública urbana","Brecha rural","Carretera","Domicilio","Zona rural","No aplica","Aeropuerto", "Comercios"].sort
  	@types_of_events=["Agresión", "Operación","Enfrentamiento","Persecusión","Mensaje","Desplazamiento","Detención arbitraria"].sort
    @types_of_aggressors=["Autoridad", "Crimen organizado", "Grupo sin filiación", "Habitantes de la comunidad", "Individuo"]
    @operations=Operation.all
    @agencies=["SEDENA","SEMAR","PF","PGR","Policía estatal","PGJ", "Policía municipal"]
    @scopes=["Local","Municipal","Estatal","Regional"]
    @hours=["00:00","01:00","02:00","03:00","04:00","05:00","06:00","07:00","08:00","09:00","10:00","11:00","12:00","13:00","14:00","15:00","16:00","17:00","18:00","19:00","20:00","21:00","22:00","23:00"]
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
    if session[:destroyed_event]
      @event_destroyed = session[:destroyed_message] 
    end
    if session[:event_date]
      @event_date = session[:event_date]
    end
  end

  def getSubtypes
    if getSubtypes_params[:type_of_event]=="Agresión"
      print getSubtypes_params[:type_of_event]*20
      subtypeArr=["Abuso de autoridad","Ocupación territorio","Levantón","Daño a vivienda","Golpiza","Ataque a autoridad","Amenaza","Homicidio","Daño a comercio"].sort
    elsif getSubtypes_params[:type_of_event]=="Operación"
      subtypeArr=["Detención","Cateo","Inhabilitar toma clandestina","Decomiso","Erradicación de cultivo","Redada","Rescate","Reacción"].sort
    elsif getSubtypes_params[:type_of_event]=="Enfrentamiento"
      subtypeArr=["Ataque a autoridad","Entre grupos"].sort
    elsif getSubtypes_params[:type_of_event]=="Persecusión"
      subtypeArr=["Ataque a autoridad","Entre grupos"].sort
    elsif getSubtypes_params[:type_of_event]=="Mensaje"
      subtypeArr=["Amenaza","Entre grupos","Presencia"].sort
    elsif getSubtypes_params[:type_of_event]=="Desplazamiento"
      subtypeArr=["Salida empresarios","Huyen comunidades"].sort
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
    session[:event_date] = long_date
    long_detencion_date = event_params[:detention_date]
    long_date_2 = event_params[:date_2]
    unless long_date.empty?
      target_date = set_date(long_date)
    end
    unless long_detencion_date.empty?
      target_detention_date = set_date(long_detencion_date)
    end
    unless long_date_2.empty?
      target_date_2 = set_date(long_date_2)
    end
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

    tx = event_params[:under_arrest_women].to_i
    event_info.delete("under_arrest_women")
    event_info.store("under_arrest_women",tx)
 
    tx = event_params[:under_arrest_minors].to_i
    event_info.delete("under_arrest_minors")
    event_info.store("under_arrest_minors",tx)
 
    tx = event_params[:under_arrest_indigenous].to_i
    event_info.delete("under_arrest_indigenous")
    event_info.store("under_arrest_indigenous",tx)
 
    tx = event_params[:under_arrest_civil_servants].to_i
    event_info.delete("under_arrest_civil_servants")
    event_info.store("under_arrest_civil_servants",tx)
 
    tx = event_params[:under_arrest_officers].to_i
    event_info.delete("under_arrest_officers")
    event_info.store("under_arrest_officers",tx)
 
    tx = event_params[:under_arrest_armed_civilians].to_i
    event_info.delete("under_arrest_armed_civilians")
    event_info.store("under_arrest_armed_civilians",tx)
 
    tx = event_params[:under_arrest_unarmed_civilians].to_i
    event_info.delete("under_arrest_unarmed_civilians")
    event_info.store("under_arrest_unarmed_civilians",tx)

    event_info.delete("date")
    event_info.delete("detention_date")
    event_info.delete("date_2")
    event_info.delete("clave_estado")
    event_info.store("date",target_date)
    event_info.store("detention_date",target_detention_date)
    event_info.store("date_2",target_date_2)
    new_event = Event.new(event_info)
    if new_event.valid?
      new_event.save
      puts "OOOooo"*100
      session[:new_event] = true
    else
      session[:event_errors] = new_event.errors.full_messages
      puts session[:event_errors]
    end
    puts new_event.errors.full_messages
    redirect_to "/events/new"
  end

  def update
  end

  def destroy
    @targetEvent = Event.find(params[:id])
    @targetEvent.destroy
    session[:destroyed_event] = true
    session[:destroyed_message] = "El evento @#{@targetEvent.serial_no} fue eliminado"
    redirect_to "/events/new"
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


  def download_events
    @events = Event.all.order("serial_no")
    @total = @events.length
    @targetInfo = []
    @events.each do |event|
      x = []
      targetMun = event.municipality
      x.push(targetMun.munici)
      targetState = State.where(:clave_estado=>targetMun.clave_estado).last
      x.push(targetState.estado)
      @targetInfo.push(x)
    end
    render xlsx: 'download_events'
  end

  private

  def event_params
    params.require(:event).permit(:serial_no, :operation_id, :clave_estado, :municipality_id, :type_of_place, :reference, :zip, :date, :source, :type_of_event, :subtype_of_event, :target_organization, :type_of_aggressor, :aggressor_name, :identity, :notes, :critical_event, :wounded_civil_servants, :wounded_officers, :wounded_officers_agency, :wounded_unarmed_civilians, :wounded_armed_civilians, :wounded_women, :wounded_minors, :wounded_indigenous, :dead_civil_servants, :dead_officers, :dead_officers_agency, :dead_unarmed_civilians, :dead_armed_civilians, :dead_women, :dead_minors, :dead_indigenous, :missing_civil_servants, :missing_officers, :missing_officers_agency, :missing_unarmed_civilians, :missing_armed_civilians, :missing_women, :missing_minors, :missing_indigenous, :under_arrest_civil_servants, :under_arrest_officers, :under_arrest_officers_agency, :under_arrest_unarmed_civilians, :under_arrest_armed_civilians, :under_arrest_women, :under_arrest_minors, :under_arrest_indigenous, :detention_date, :detention_time, :detention_denial, :detention_violence, :detention_location, :date_2) 
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
