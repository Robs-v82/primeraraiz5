class PackagesController < ApplicationController
  def create
  end

  def getSubtotal
    itemKeys = getSubtotal_params.keys
    subtotal = 0
    puts 'Xx'*100
    puts itemKeys
    myPrices = generalPrices
    itemKeys.each{|x|
      myPrices.each{|y|
        if y[:item] == x
          subtotal = subtotal+(y[:amount]*getSubtotal_params[x].to_i)
          puts subtotal
        end
      }
    }
    subtotal = number_with_delimiter(subtotal)
    render json: {subtotal: subtotal}
  end

  def getClients
  	targetInstitution = getInstitution_params[:institution_id]
    targetContacts = Institution.find(targetInstitution).contacts.order(:name)
    render json: {clients: targetContacts}
  end

  private

  def getInstitution_params
    params.require(:package).permit(:institution_id)
  end

  def getSubtotal_params
    params.require(:package).permit(:completo100, :completo200, :completo300, :completo400, :completo500, :completo1000, :basico60, :basico60x2, :basico100, :toma360, :video, :plano, :hosting, :procesamiento, :alimentos, :hospedajeA, :hospedajeB, :institution_id, :avion, :terrestre, :descuento)    
  end

end