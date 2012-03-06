require "rails/generators/active_record"
module JapaneseLocalGoverment
  class JapaneseLocalGoverment < Rails::Generators::Base
    include Rails::Generators::Migration
    namespace "japanese_local_goverment"
    source_root File.expand_path "#{File.dirname(__FILE__)}/../templates"

    def create_migration_file
      migration_template "create_japanese_prefectures.rb", "db/migrate/create_japanese_prefectures"
      migration_template "create_japanese_cities.rb", "db/migrate/create_japanese_cities"
    end

    def self.next_migration_number(dirname)
      ActiveRecord::Generators::Base.next_migration_number(Rails.root + "db/migrate")
    end
  end
end
