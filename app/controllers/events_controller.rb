class EventsController < ApplicationController
  

  def new
  	@states=State.all
  	@municipalities=Municipality.all
  	@types_of_place=["Vía pública urbana","Brecha rural","Carretera","Domicilio","Zona rural","No aplica","Aeropuerto"].sort
  	@types_of_events=["Agresión", "Operación","Enfrentamiento","Persecusión","Mensaje","Desplazamiento","Detención arbitraria"].sort
  	@subtypes_of_events=[sub_agresion]
  	sub_agresion=["Levantón","Homicidio","Daño a vivienda","Levantón","Golpiza","Ataque a autoridad","Amenaza","Homicidio","Daño a comercio"].sort
  	sub_operacion=["Detención","Cateo","Inhabilitar toma clandestina","Detención","Decomiso","Erradicación de cultivo","Redada","Rescate","Reacción"].sort
  	sub_enfrentamiento=["Ataque a autoridad","Entre grupos"].sort
  	sub_persecucion=["Ataque a autoridad","Entre grupos"].sort
  	sub_mensaje=["Amenaza","Entre grupos","Presencia"].sort
  	sub_deplazamiento=["Salida empresarios"].sort
  	sub_detencion_arbitraria=[].sort
  end

  def update
  end
end
