# ================= DBLib.rb ===========================
class DBLib
    require 'dbi'

    def connect_to_mysql()
        dsn =  "DBI:mysql2:database=web_development;host=localhost;flag=65536";
        return DBI.connect(dsn, "root", "kosong")
    end

    def baseQuery(stmt)
        dbh = connect_to_mysql()
        sth = dbh.prepare(stmt)
        sth.execute()
        rec={}
       if sth.column_names.size == 0 then
         rec = {}
       else
         i=0
         sth.fetch_hash do |row|
            rec[i]= row
            i = i+1;
         end
       end
       return rec 
    end

    def doQuery(squery)
        return baseQuery(squery)
    end

    def doQueryUpdate(squery)
        baseQuery(squery)
    end

end
# ======================= DBLib.rb end =========================