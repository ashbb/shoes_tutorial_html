# sample73.rb
require 'sqlite3'
Shoes.app :width => 250, :height => 120 do
  db = SQLite3::Database.new "test.db"
  db.execute "create table t1 (t1key INTEGER PRIMARY KEY,data " \
    "TEXT,num double,timeEnter DATE)"
  db.execute "insert into t1 (data,num) values ('This is sample data',3)"
  db.execute "insert into t1 (data,num) values ('More sample data',6)"
  db.execute "insert into t1 (data,num) values ('And a little more',9)"
  rows = db.execute "select * from t1"
  rows.each{|k, d, n| para "#{k} : #{d} : #{n}\n"}
end
