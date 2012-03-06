require "csv"
module JapaneseLocalGoverment
  module Updater
    PREFECTURES = "#{File.dirname(__FILE__)}/../../data/japanese_local_goverment/japanese_prefectures.csv"
    CITIES = "#{File.dirname(__FILE__)}/../../data/japanese_local_goverment/japanese_cities.csv"
    module_function
    def update
      update_prefectures
      update_cities
    end

    def update_prefectures
      CSV.foreach(PREFECTURES, encoding: "UTF-8") do |(code, name)|
        Prefecture.create_or_update!(code: code, name: name)
      end
    end

    def update_cities
      pref = Prefecture.first
      CSV.foreach(CITIES, encoding: "UTF-8") do |(code, pref_name, name)|
        pref = Prefecture.find_by_name(pref_name) unless pref.name == pref_name
        City.create_or_update!(code: code, prefecture_code: pref.code, name: name)
      end
    end
  end
end
