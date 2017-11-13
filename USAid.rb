
rails g model operation date:date municipality:references name source scope location sedena:binary semar:binary pf:binary prg:binary state_in:binary municipality_in:binary manpower:integer goals 

rails g model event serial_no:integer operation:references municipality:references locality type_of_place reference zip:integer date:date source type_of_event subtype_of_event target_organization type_of_aggressor aggressor_name identity notes

rails g model proyects serial_no:integer date:date name source scope location state:references municipality:references 


names = [[85,"Coto 6 Tipo B"],[86,"Coto 6 Tipo "],[87,"Coto 7 Coral Esquina"],[88,"Coto 7 Coral Central"],[89,"Coto 4 Tipo Topacio Plus"],[90,"Coto 4 Tipo Ceiba"]]


names = ["Coto 6 Tipo B","Coto 6 Tipo ","Coto 7 Coral Esquina","Coto 7 Coral Central","Coto 4 Tipo Topacio Plus","Coto 4 Tipo Ceiba"]

t = 0
(85..86).each{|x| Product.find(x).update(:name=>names[t]); t=t+1}


