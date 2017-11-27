  


    @events = Event.all.order("serial_no")
    @targetInto = []
    @events.each do |event|
      x = []
      targetMun = event.municipality
      x.push(targetMun.munici)
      targetState = State.where(:clave_estado=>targetMun.clave_estado).last
      x.push(targetState.estado)
      @targetEvents.push(x)
    end


      x.push(event.locality)
      x.push(event.type_of_place)
      x.push(event.reference)
      x.push(event.zip)
      x.push(event.source)
      x.push(event.subtype_of_event)
      x.push(event.target_organization)
      x.push(event.type_of_aggressor)
      x.push(event.aggressor_name)
      x.push(event.identity)
      x.push(event.notes)
      x.push(event.critical_event)
      x.push(event.wounded_civil_servants)
      x.push(event.wounded_officers)
      x.push(event.wounded_officers_agency)
      x.push(event.wounded_unarmed_civilians)
      x.push(event.wounded_armed_civilians)
      x.push(event.wounded_women)
      x.push(event.wounded_minors)
      x.push(event.wounded_indigenous)
      x.push(event.dead_civil_servant)
      x.push(event.dead_officer)
      x.push(event.dead_officers_agency)
      x.push(event.dead_unarmed_civilians)
      x.push(event.dead_armed_civilians)
      x.push(event.dead_women)
      x.push(event.dead_minors)
      x.push(event.dead_indigenous)
      x.push(event.missing_civil_servants)
      x.push(event.missing_civil_servants)
      
    end

create_table "events", force: true do |t|
    t.integer  "missing_civil_servants"
    t.integer  "missing_officers"
    t.string   "missing_officers_agency"
    t.integer  "missing_unarmed_civilians"
    t.integer  "missing_armed_civilians"
    t.integer  "missing_women"
    t.integer  "missing_minors"
    t.integer  "missing_indigenous"
    t.integer  "under_arrest_civil_servants"
    t.integer  "under_arrest_officers"
    t.string   "under_arrest_officers_agency"
    t.integer  "under_arrest_unarmed_civilians"
    t.integer  "under_arrest_armed_civilians"
    t.integer  "under_arrest_women"
    t.integer  "under_arrest_minors"
    t.integer  "under_arrest_indigenous"
    t.date     "detention_date"
    t.time     "detention_time"
    t.boolean  "detention_denial"
    t.boolean  "detention_violence"
    t.string   "detention_location"
  end