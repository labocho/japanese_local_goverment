# encoding: UTF-8
require "csv"
require "ruby-debug"
module JapaneseLocalGoverment
  module Updater
    PREFECTURES_AND_CITIES = "#{File.dirname(__FILE__)}/../../data/japanese_local_goverment/prefectures_and_cities.csv"
    WARDS = "#{File.dirname(__FILE__)}/../../data/japanese_local_goverment/wards.csv"
    module_function
    def update
      update_prefectures_and_cities
      update_wards
    end

    def update_prefectures_and_cities
      CSV.foreach(PREFECTURES_AND_CITIES, encoding: "UTF-8") do |(code, pref, city)|
        Base.create_or_update!(code: code, prefecture: pref, city: city)
      end
    end

    def update_wards
      CSV.foreach(WARDS, encoding: "UTF-8") do |(code, city_and_ward)|
        next if City.exists?(city: city_and_ward) # 市の行は無視
        city_and_ward =~ /\A(.+市)(.+)\z/ # すべて **市** 形式であることを前提にしている
        city, ward = $~.captures
        pref = City.where(city: city).first.prefecture # 区を持つ市の名称は重複がないことを前提にしている
        Base.create_or_update!(code: code, prefecture: pref, city: city, ward: ward)
      end
    end
  end
end
