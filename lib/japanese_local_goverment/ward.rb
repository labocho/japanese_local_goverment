module JapaneseLocalGoverment
  class Ward < Base
    belongs_to :prefecture_record, class_name: "JapaneseLocalGoverment::Prefecture", foreign_key: :prefecture, primary_key: :prefecture
    belongs_to :city_record, class_name: "JapaneseLocalGoverment::City", foreign_key: [:prefecture, :city], primary_key: [:prefecture, :city]
  end
end
