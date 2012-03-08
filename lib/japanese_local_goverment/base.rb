module JapaneseLocalGoverment
  class Base < ActiveRecord::Base
    set_table_name :japanese_local_goverments
    set_primary_key :code
    attr_protected :code, :type, :created_at, :updated_at
    
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