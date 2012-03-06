module JapaneseLocalGoverment
  class City < ActiveRecord::Base
    set_table_name "japanese_cities"
    belongs_to "prefecture", class_name: "JapaneseLocalGoverment::Prefecture", foreign_key: "prefecture_code", primary_key: "code"
    attr_protected :code, :created_at, :updated_at

    def self.create_or_update!(attrs)
      code = attrs.delete :code
      city = find_by_code(code) || new
      city.code = code
      city.attributes = attrs
      city.save!
      city
    end
  end
end
