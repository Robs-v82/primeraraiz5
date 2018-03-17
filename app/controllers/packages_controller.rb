class PackagesController < ApplicationController
  
  def create
    package_info = package_params
    package_info.store("total", session[:total])
    new_package = Package.new(package_info)
    if new_package.valid?
      new_package.save
      session[:new_quote] = true
    else
      session[:quote_errors] = new_package.errors.full_messages
    end
    target = Package.last.contact_id
    target_contact = Contact.find(target)
    UserMailer.quote_email(target_contact).deliver
    redirect_to "/admins"
  end

  def getSubtotal
    itemKeys = getSubtotal_params.keys
    discount = 0  
    share = getSubtotal_params[:descuento].to_f
    myPrices = generalPrices[0..13]
    itemKeys.each{|x|
      myPrices.each{|y|
        if y[:item] == x
          discount = discount+(y[:amount]*getSubtotal_params[x].to_i)*share
          puts discount
        end
      }
    }
    subtotal = 0 - discount
    discount = number_with_delimiter(discount)
    myPrices = generalPrices
    itemKeys.each{|x|
      myPrices.each{|y|
        if y[:item] == x
          subtotal = subtotal+(y[:amount]*getSubtotal_params[x].to_i)
          puts subtotal
        end
      }
    }
    session[:total] = subtotal
    subtotal = number_with_delimiter(subtotal)
    render json: {
      subtotal: subtotal,
      discount: discount
    }
  end

  def getClients
  	targetInstitution = getInstitution_params[:institution_id]
    targetContacts = Institution.find(targetInstitution).contacts.order(:name)
    render json: {clients: targetContacts}
  end

  private

  def package_params
    params.require(:package).permit(:contact_id, :municipality_id, :completo100, :completo300, :completo400, :completo500, :completo1000, :basico60, :basico60x2, :basico100, :toma360, :video, :plano, :hosting, :procesamiento, :alimentos, :hospedajeA, :hospedajeB, :avion, :terrestre, :descuento)
  end


  def getInstitution_params
    params.require(:package).permit(:institution_id)
  end

  def getSubtotal_params
    params.require(:package).permit(:completo100, :completo200, :completo300, :completo400, :completo500, :completo1000, :basico60, :basico60x2, :basico100, :toma360, :video, :plano, :hosting, :procesamiento, :alimentos, :hospedajeA, :hospedajeB, :institution_id, :avion, :terrestre, :taxPayer, :descuento)    
  end

end