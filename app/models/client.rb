class Client < ActiveRecord::Base
	validates :mbcDoulaName, :backupDoulaName, :mentorDoublaName, :referralName, :clientName, :maidenName, :clientAge, :partnerName, :clientLanguage, :exepectedDueDate, :clientNumber, :clientAddrLine, :clientCity, :clientProvince, :clientPostalCode, :plannedPlaceOfBirth, :caregiverName, :numChildren, :numPregnancies, :labourDetails, :clientHealthHistory, :clientFamilyHealthHistory, :Nutrition, :Exercise, :GenStateHealth, :EmotionalWellBeing, :RestAndSleep, :SupplNdrugs, :Concerns, presence: true
end
