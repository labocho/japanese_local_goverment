module JapaneseLocalGoverment
  class Prefecture < Base
    has_many :cities, class_name: "JapaneseLocalGoverment::City", foreign_key: :prefecture, primary_key: :prefecture
    has_many :wards, class_name: "JapaneseLocalGoverment::Ward", foreign_key: :prefecture, primary_key: :prefecture
  end
end
