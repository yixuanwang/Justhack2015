class ClientsController < ApplicationController
  before_action :set_client, only: [:show]
  before_action :authenticate_user!, only: [:index, :show, :action] 
	@status = ['Available', 'Reserved', 'Taken']

  def index
    @client = Client.all
    @status = ['Available', 'Reserved', 'Taken']
  end
  
  def form
		@client = Client.new
	end

  def action
    @params = params[:options]
    if @params = "request"
      requestList = current_user.requestList.to_s.split(',').push(params[:id]).join(',')
      if current_user.update({requestList: requestList})
        if Client.find(params[:id]).update({formStatus: 1})
          redirect_to ''
        else
        render 'index'
        end
      else
        render 'index'
      end


    elsif @params = "bookmark"

    end
        

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

  def show
    
  end
	
  private 
    def set_client
      @client = Client.find(params[:id])
      @status = ['Available', 'Reserved', 'Taken']

    end

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
