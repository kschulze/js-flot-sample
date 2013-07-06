class Filbert < ActiveRecord::Base

  def self.the_sums
    group(:name).sum(:gezuntas)
  end

  def self.sums_to_json
    data = []
    the_sums.each do |key, value|
      entry = OpenStruct.new
      entry.label = key
      entry.data = value
      data << entry
    end

    json_data = Jbuilder.encode do |json|
      json.array! data, :label, :data
    end

    return json_data
  end

end
