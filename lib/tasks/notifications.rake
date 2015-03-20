namespace :notifications do
  desc "Reset notification content format"
  task :reset_content => :environment do
    Notification.all.each do |e|
      if (e.content =~ /\?/).nil? && e.content =~ /'(.*)'/
        e.content.gsub!(/'.*'/,"'#{$1}?from=#{e.id}'")
        e.save!
      end
    end
  end
end