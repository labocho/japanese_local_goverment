module JapaneseLocalGoverment
  class Prefecture < ActiveRecord::Base
    set_table_name "japanese_prefectures"
    has_many "cities", class_name: "JapaneseLocalGoverment::City", foreign_key: "prefecture_code", primary_key: "code"
    attr_protected :code, :created_at, :updated_at

    def self.create_or_update!(attrs)
      code = attrs.delete :code
      pref = find_by_code(code) || new
      pref.code = code
      pref.attributes = attrs
      pref.save!
      pref
    end
  end
end
