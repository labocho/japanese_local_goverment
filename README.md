# japanese\_local\_goverment

japanese\_local\_goverment is Ruby on Rails plugin to store following informations for japanese local goverment.

  * Prefecture / City name
  * Local goverment code (全国地方公共団体コード)
  * Prefecture local goverment code (city only)
  
Source: http://www.soumu.go.jp/main_content/000103403.xls (2011-04-01)

# Instllation

Edit Gemfile

    #Gemfile
    gem "japanese_local_goverment"

and enter command below.

    bundle install
    rails generate japanese_local_goverment
    rake db:migrate

# Initialize / Updating

    rake japanese_local_goverment:update

# Usage

    hokkaido = JapaneseLocalGoverment::Prefecture.find_by_name("北海道")
    # #<JapaneseLocalGoverment::Prefecture code: "010006", name: "北海道">
    hokkaido.cities
    # [#<JapaneseLocalGoverment::City code: "016098", prefecture_code: "010006", name: "えりも町">,
    #  #<JapaneseLocalGoverment::City code: "013714", prefecture_code: "010006", name: "せたな町">,
    #  ...

# Contributing to japanese\_local\_goverment

* Check out the latest master to make sure the feature hasn't been implemented or the bug hasn't been fixed yet
* Check out the issue tracker to make sure someone already hasn't requested it and/or contributed it
* Fork the project
* Start a feature/bugfix branch
* Commit and push until you are happy with your contribution
* Make sure to add tests for it. This is important so I don't break it in a future version unintentionally.
* Please try not to mess with the Rakefile, version, or history. If you want to have your own version, or is otherwise necessary, that is fine, but please isolate to its own commit so I can cherry-pick around it.

# Copyright

Copyright (c) 2012 labocho. See LICENSE.txt for
further details.
= JapaneseLocalGoverment

This project rocks and uses MIT-LICENSE.