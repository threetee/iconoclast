namespace :iconoclast do
  desc "Load Icons (takes a path or copies to public/images)"
  task :add  do |t|
   ARGV[1] ? Iconoclast.copy_icons(:dir => ARGV[1]) : Iconoclast.copy_icons
  end
  
  desc "Remove icons (takes a path or removes from public/images)"
  task :remove do |t|
    ARGV[1] ? Iconoclast.remove_icons(:dir => ARGV[1]) : Iconoclast.remove_icons
  end
  
  desc "Refresh icons (takes a path or refreshes in public/images)"
  task :refresh  do |t|
    ARGV[1] ? Iconoclast.remove_icons(:dir => ARGV[1]) : Iconoclast.remove_icons
    ARGV[1] ? Iconoclast.copy_icons(:dir => ARGV[1]) : Iconoclast.copy_icons
  end
  
end