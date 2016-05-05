class ETL
  def self.transform(old)
    transformed= {}
    old.each do |key, values|
      values.each do |value|
        transformed[value.downcase] = key
      end
    end
    transformed
  end
end
