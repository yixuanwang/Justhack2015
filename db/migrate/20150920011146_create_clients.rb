class CreateClients < ActiveRecord::Migration
  def change
    create_table :clients do |t|
      t.string :mbcDoulaName
      t.string :backupDoulaName
      t.string :mentorDoublaName
      t.string :referralName

      t.string :clientName
      t.string :maidenName
      t.integer :clientAge
      t.string :partnerName
      t.string :clientLanguage
      t.date :exepectedDueDate
      t.integer :clientNumber

      t.string :clientAddrLine
      t.string :clientCity
      t.string :clientProvince
      t.string :clientPostalCode
      t.string :plannedPlaceOfBirth
      t.string :caregiverName

      t.integer :numChildren
      t.integer :numPregnancies
      t.text :labourDetails

      t.text :clientHealthHistory
      t.text :clientFamilyHealthHistory

      t.text :Nutrition
      t.text :Exercise
      t.text :GenStateHealth
      t.text :EmotionalWellBeing
      t.text :RestAndSleep
      t.text :SupplNdrugs
      t.text :Concerns

      t.integer :formStatus

      t.timestamps null: false
    end
  end
end
