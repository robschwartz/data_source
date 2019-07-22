class Provider < ApplicationRecord
  # has_many :leads 

  def self.medicare_available?(line)
    true if line.include?("Medicare")
  end

  def self.medicaid_available?(line)
    true if line.include?("Medicaid")
  end

  def self.import_nursing_homes(line)
    Provider.find_or_create_by(provider_number: line[0]) do |prov|
      # need this as a hack to not have name set to array of the full line ?!?
      prov.home_inspection_rating = line[23],


      prov.name = line[1].split.map(&:capitalize).join(' '),
      prov.address = line[2].split.map(&:capitalize).join(' '),
      prov.city = line[3].split.map(&:capitalize).join(' '),
      prov.state = line[4],
      prov.zip = line[5],
      prov.phone = line[6],
      prov.county = line[8],
      prov.bed_count = line[10],
      prov.occupied_beds = line[11],
      prov.medicare = medicare_available?(line[12]),
      prov.medicaid = medicaid_available?(line[12]),
      prov.holding_company =line[14].split.map(&:capitalize).join(' '),
      prov.overall_rating = line[22]
      prov.home_type = "Nursing Home"
    end
  end

  def self.import_assisted_living(line)
    prov = eval(line)
    new_provider = Provider.where(name: prov[:name], home_type: "Assisted Living Facility").empty?
    if new_provider
      Provider.create(
        name: prov[:name],
        city: prov[:city],
        state: prov[:state],
        zip: prov[:zip],
        phone: prov[:phone],
        address: prov[:address],
        description: prov[:text],
        home_type: "Assisted Living Facility"
      )
    else
      puts "#{prov[:name]}  already exists"
    end
  end
end
