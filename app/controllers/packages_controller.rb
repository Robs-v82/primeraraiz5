class PackagesController < ApplicationController

  def packageCode(myName, number)
    myDate = I18n.l(Time.now, :format => "%e%m%Y")
    myNumber = number.to_s
    myString = myName + myDate + myNumber
    if Package.where(:name=>myString).empty?
      return myString
    else
      newNumber = number + 1
      packageCode(myName, newNumber)
    end
  end

  def create
    package_info = package_params
    session[:copies] = nil
    session[:message] = nil
    unless package_info[:copies].nil?
      session[:copies] = package_info[:copies]
      package_info.delete("copies")
    end
    puts "XX"*100
    puts package_info[:message]
    unless package_info[:message].nil?
      session[:message] = package_info[:message]
      package_info.delete("message")
    end
    package_info.store("total", session[:total])
    personal_payer = package_info[:taxPayer]
    package_info.delete("taxPayer")

    @contact = Contact.find(package_info[:contact_id])
    unless @contact.institution.nil?
      package_name = @contact.institution.name
    else
      package_name = @contact.name
    end
    packageNumber = 1
    this_code = packageCode(package_name,packageNumber)
    session[:fileName] = this_code
    package_info.store("name", this_code)
    new_package = Package.new(package_info)
    if new_package.valid?
      new_package.save
      session[:new_quote] = true
    else
      session[:quote_errors] = new_package.errors.full_messages
    end
    target = Package.last.contact_id
    target_contact = Contact.find(target)
    unless session[:copies].nil?
      myEmails = target_contact.email + "," + session[:copies]
    else  
      myEmails = target_contact.email
    end
    @dateString = I18n.l(Time.now, :format => "%e de %B de %Y")
    @number_of_models = package_info[:completo100].to_i+package_info[:completo200].to_i+package_info[:completo300].to_i+package_info[:completo400].to_i+package_info[:completo500].to_i+package_info[:completo1000].to_i+package_info[:basico60].to_i+package_info[:basico100].to_i+package_info[:basico60x2].to_i+package_info[:basico60x2].to_i
    @multiple_models = false
    if @number_of_models > 1
      @multiple_models = true 
    end
    @number_of_models = @number_of_models.to_s
    unless package_info[:municipality_id].nil?
      municipality = Municipality.find(package_info[:municipality_id])
      myCode = municipality.clave_estado
      @munici = municipality.munici
      @estado = State.where(:clave_estado=>myCode).last.estado      
    end
    inputStrings = ["completo100","completo200","completo300","completo400","completo500","completo1000","basico60","basico60x2","basico100","toma360","video","plano","hosting","procesamiento","alimentos", "hospedajeA", "hospedajeB", "avion", "terrestre"]
    packageStrings = ["Modelo 100", "Modelo 200", "Modelo 300", "Modelo 400", "Modelo 500", "Modelo 1000", "Modelo Básico", "Modelo Básico 2X", "Modelo Básico Extra", "Vista 360 adicional", "Video", "Plano esquemático", "Año adicional de hospedaje en línea", "Procesamiento"]
    tableArr = []
    myPrices = generalPrices
    myProducts = 0
    (0..13).each{|x|
      unless package_info[inputStrings[x]].nil?
        target = myPrices[x]
        productPrice = number_in_pesos(target[:amount])
        puts productPrice
        amount = target[:amount]*package_info[inputStrings[x]].to_i 
        amount = number_in_pesos(amount)
        newHash = {"item"=>packageStrings[x], "price"=>productPrice, "quant"=>package_info[inputStrings[x]], "amount"=>amount}
        tableArr.push(newHash)
        myProducts = myProducts + target[:amount]*package_info[inputStrings[x]].to_i
      end
    }
    @tableArr = tableArr

    # DESCUENTO
    puts package_info["descuento"]
    unless package_info["descuento"].nil?
      myPercentage = package_info["descuento"].to_f
      myPercentage = myPercentage*100 
      @discountLine = {"item"=>"Descuento "+myPercentage.to_s[0..1]+"%"}
      price = myPercentage*myProducts/100
      @discountLine["price"] = "-"+number_in_pesos(price)
      @discountLine["quant"] = 1
      @discountLine["amount"] = @discountLine["price"]
    end

    # VIÁTICOS
    travelExpenses = 0
    
    (14..18).each{|x|
      unless package_info[inputStrings[x]].nil?
        target = myPrices[x]
        expense = target[:amount]*package_info[inputStrings[x]].to_i
        travelExpenses = travelExpenses+expense 
      end
    }

    unless travelExpenses == 0
      @travelExpenses = number_in_pesos(travelExpenses)
    end

    if travelExpenses > myProducts
      paquete = travelExpenses + myProducts
      @paquete = number_in_pesos(paquete)
      @travelExpenses = nil
      @tableArr = nil
    end

    # IMPUESTOS
    if personal_payer == "true"
      @charges = [
          {"item"=>"Subtotal","amount"=>number_in_pesos(session[:total])},
          {"item"=>"IVA","amount"=>number_in_pesos(session[:total]*0.16)}
        ]
      @finalCharges = [{"item"=>"Total*","amount"=>number_in_pesos(session[:total]*1.16)}]
      @deposit = number_in_pesos(session[:total]*1.16/2)
      @message = "*Cotización válida para personas físicas. En caso de facturación a empresas proceden retenciones de ISR e IVA."
    else
      @charges = [
          {"item"=>"Subtotal","amount"=>number_in_pesos(session[:total])},
          {"item"=>"IVA","amount"=>number_in_pesos(session[:total]*0.16)},
          {"item"=>"Total antes de retenciones","amount"=>number_in_pesos(session[:total]*1.16)},
          {"item"=>"Retención ISR","amount"=>"-"+number_in_pesos(session[:total]*0.1)},
          {"item"=>"Retención IVA","amount"=>"-"+number_in_pesos(session[:total]*0.16*2/3)}
      ]
      @finalCharges = [{"item"=>"Total a depositar*","amount"=>number_in_pesos(session[:total]*1.16-(session[:total]*0.1)-(session[:total]*0.16*2/3))}]
      @deposit = (session[:total]*1.16)-(session[:total]*0.1)-(session[:total]*0.16*2/3)
      @deposit = number_in_pesos(@deposit/2)
      @message = "*Las retenciones de ISR e IVA proceden sólo para facturación a empresas."
    end

    @total = session[:total]
    # CREATE PDF

    PDFKit.configure do |config|
      config.default_options[:load_error_handling] = 'ignore'
    end

    html = render_to_string(:layout => "packages", :layout => false)  
    kit = PDFKit.new(html)
    myFile = kit.to_file('Quotes/'+session[:fileName]+'.pdf')
    
    # SEND EMAIl
    myPackage = Package.last
    myPackage.update(:docs=>kit.to_file('Quotes/'+session[:fileName]+'.pdf'))
    UserMailer.quote_email(target_contact, myEmails, session[:fileName], session[:message]).deliver
  end

  def myQuote

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
    params.require(:package).permit(:completo100, :completo200, :completo300, :completo400, :completo500, :completo1000, :basico60, :basico60x2, :basico100, :toma360, :video, :plano, :hosting, :procesamiento, :alimentos, :hospedajeA, :hospedajeB, :avion, :terrestre, :descuento, :contact_id, :municipality_id, :taxPayer, :copies, :message)
  end


  def getInstitution_params
    params.require(:package).permit(:institution_id)
  end

  def getSubtotal_params
    params.require(:package).permit(:completo100, :completo200, :completo300, :completo400, :completo500, :completo1000, :basico60, :basico60x2, :basico100, :toma360, :video, :plano, :hosting, :procesamiento, :alimentos, :hospedajeA, :hospedajeB, :institution_id, :avion, :terrestre, :taxPayer, :descuento)    
  end

end