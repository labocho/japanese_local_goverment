module JapaneseLocalGoverment
  class City < Base
    belongs_to :prefecture_record, class_name: "JapaneseLocalGoverment::Prefecture", foreign_key: :prefecture, primary_key: :prefecture
    has_many :wards, class_name: "JapaneseLocalGoverment::Ward", foreign_key: [:prefecture, :city], primary_key: [:prefecture, :city]
  end
end
