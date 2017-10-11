
rails g model operation date:date municipality:references name source scope location sedena:binary semar:binary pf:binary prg:binary state_in:binary municipality_in:binary manpower:integer goals 

rails g model event serial_no:integer operation:references municipality:references locality type_of_place reference zip:integer date:date source type_of_event subtype_of_event target_organization type_of_aggressor aggressor_name identity notes

rails g model proyects serial_no:integer date:date name source scope location state:references municipality:references 