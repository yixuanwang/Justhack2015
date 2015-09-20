class ClientsController < ApplicationController
	@status = ['Available', 'Reserved', 'Taken']

  def index
    @client = Client.all
  end
  
  def form
		@client = Client.new
	end

	def create
    tmp_params = client_params
    tmp_params.merge!(formStatus: 0)
		@client = Client.new(tmp_params)

    if @client.save
      redirect_to ''
    else
      render 'form'
    end
	end

  def index
    
  end
	
  private 
		def client_params

			params.require(:client).permit(
                                    :mbcDoulaName, 
                                    :backupDoulaName,
                                    :mentorDoublaName, 
                                    :referralName, 
                                    :clientName, 
                                    :maidenName, 
                                    :clientAge, 
                                    :partnerName, 
                                    :clientLanguage,
                                    :exepectedDueDate, 
                                    :clientNumber, 
                                    :clientAddrLine, 
                                    :clientCity, 
                                    :clientProvince, 
                                    :clientPostalCode, 
                                    :plannedPlaceOfBirth, 
                                    :caregiverName, 
                                    :numChildren, 
                                    :numPregnancies, 
                                    :labourDetails, 
                                    :clientHealthHistory, 
                                    :clientFamilyHealthHistory, 
                                    :Nutrition, 
                                    :Exercise, 
                                    :GenStateHealth, 
                                    :EmotionalWellBeing, 
                                    :RestAndSleep, 
                                    :SupplNdrugs, 
                                    :Concerns
                                    )
		end

end
