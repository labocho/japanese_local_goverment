class CreateJapanesePrefectures < ActiveRecord::Migration
  def self.up
    execute <<-SQL
      create table japanese_prefectures(
        code char(6) primary key,
        name char(12),
        unique (name)
      );
    SQL
  end

  def self.down
    execute <<-SQL
      drop table japanese_prefectures;
    SQL
  end
end
