class CreateJapaneseCities < ActiveRecord::Migration
  def self.up
    execute <<-SQL
      create table japanese_cities(
        code char(6) primary key,
        prefecture_code char(6) not null,
        name char(21),
        foreign key (prefecture_code) references japanese_prefectures (code),
        unique (prefecture_code, name)
      );
    SQL
  end

  def self.down
    execute <<-SQL
      drop table japanese_cities;
    SQL
  end
end
