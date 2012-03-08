class CreateJapaneseLocalGoverments < ActiveRecord::Migration
  def self.up
    execute <<-SQL
      create table japanese_local_goverments(
        code char(5) primary key,
        type char(40) not null,
        prefecture char(12) not null,
        city char(21),
        ward char(21),
        unique (prefecture, city, ward)
      );
    SQL
  end

  def self.down
    execute <<-SQL
      drop table japanese_local_goverments;
    SQL
  end
end
