require "active_record"
require "composite_primary_keys"
module JapaneseLocalGoverment
  autoload :Base, "japanese_local_goverment/base"
  autoload :City, "japanese_local_goverment/city"
  autoload :Prefecture, "japanese_local_goverment/prefecture"
  autoload :Updater, "japanese_local_goverment/updater"
  autoload :Version, "japanese_local_goverment/version"
  autoload :Ward, "japanese_local_goverment/ward"
end
