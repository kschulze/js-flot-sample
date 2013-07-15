class Filbert < ActiveRecord::Base

  def self.the_sums
    group(:name).sum(:gezuntas)
  end
  # NOTE:  send the data raw and RAILS / gon  converts it to correct json on the page
  def self.sums_to_json
    data = []
    the_sums.each do |key, value|
      entry = {'label' => key, 'data' => value} #OpenStruct.new
      data << entry
    end
    data
  end

end
