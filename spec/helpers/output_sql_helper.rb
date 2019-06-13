module OutputSqlHelper
  def explain_sql
    puts (yield).explain if yield.ancestors.include?(ActiveRecord::Base)
  end

  def only_sql
    puts "#{(yield).to_sql} \n"
  end
end
