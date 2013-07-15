class Filbert < ActiveRecord::Base

  def self.the_sums
    group(:name).sum(:gezuntas)
  end

  def self.sums_to_json
    data = []
    the_sums.each do |key, value|
      entry = {'label' => key, 'data' => value} #OpenStruct.new
      data << entry
    end
    data
  end

end
