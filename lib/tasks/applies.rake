namespace :applies do
  desc "Fill Apply Model p_serial column data"
  task :fill_p_serial => :environment do
    puts "Start..."
    Apply.all.each do |e|
      begin
        e.p_serial = "SCCSA_#{e.id}"
        puts "....................#{e.p_serial}"
        e.save!
      rescue Exception => eee
        puts "Error....#{e.id}"
        puts eee
        next
      end
    end
    puts "End...."
  end

  desc "Fill Apply Model implement_date column data"
  task :fill_implement_date => :environment do
    puts "Start..."
    Apply.all.each do |e|
      begin
        e.implement_date = Date.today
        puts "....................#{e.id}"
        e.save!
      rescue Exception => eee
        puts "Error....#{e.id}"
        puts eee
        next
      end
    end
    puts "End...."
  end
end