module JapaneseLocalGoverment
  class Base < ActiveRecord::Base
    self.table_name = :japanese_local_goverments
    self.primary_key = :code

    def self.create_or_update!(attrs)
      code = attrs.delete :code
      lg = find_by_code(code) || new_with_guess_type(attrs)
      lg.code = code
      lg.attributes = attrs
      lg.save!
      lg
    end

    def self.new_with_guess_type(attrs)
      case
      when attrs[:city].blank?
        Prefecture.new
      when attrs[:ward].blank?
        City.new
      else
        Ward.new
      end
    end

    def code=(value)
      self[:code] = value ? value[0..4] : value
    end

    def name
      ward || city || pref
    end

    def full_name
      "#{pref}#{city}#{ward}"
    end

    def to_s
      name
    end

    def to_param
      name
    end

    def prefecture?
      is_a? Prefecture
    end

    def city?
      is_a? City
    end

    def ward?
      is_a? Ward
    end
  end
end
