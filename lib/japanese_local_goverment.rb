module JapaneseLocalGoverment
  autoload :City, "japanese_local_goverment/city"
  autoload :Prefecture, "japanese_local_goverment/prefecture"
  autoload :Updater, "japanese_local_goverment/updater"
  autoload :Version, "japanese_local_goverment/version"
end

load "tasks/japanese_local_goverment_tasks.rake" if defined? Rake
