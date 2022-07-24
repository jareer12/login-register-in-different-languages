require "luasql.mysql"
env = assert(luasql.mysql())
con = assert(env:connect "my_db")
for id, name, address in rows(con, "select * from contacts") do
    print(string.format("%s: %s", name, address))
end
