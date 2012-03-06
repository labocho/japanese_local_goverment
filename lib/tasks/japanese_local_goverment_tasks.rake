# encoding: UTF-8
namespace :japanese_local_goverment do
  desc "Update japanese_prefectures/cities table"
  task :update => :environment do
    JapaneseLocalGoverment::Updater.update
  end
end
