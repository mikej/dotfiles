require 'rake'

def all_files
  Dir['*']
end

def excluded_files
  %w[Rakefile exclude]
end

# def already_symlinked?(source_path, target_path)
#   puts "check if #{source_path} linked to #{target_path}"
#   target_exists = File.exists?(target_path)
#   target_is_symlink = target_exists && File.lstat(target_path).symlink?
#   target_matches = target_is_symlink && File.readlink(target_path) == source_path
#   puts "target_exists = #{target_exists}, target_is_symlink = #{target_is_symlink}, target_matches = #{target_matches}"
#   target_exists && target_is_symlink && target_matches
# end

def already_symlinked?(source_path, target_path)
  absolute_source = File.expand_path(source_path)
  puts absolute_source
  if File.exists?(target_path) && File.lstat(target_path).symlink?
    target_link = File.readlink(target_path)
    absolute_target_link = File.expand_path(target_link, File.basename(target_path))
    puts absolute_target_link
  end
  false
end

desc "install the dot files into user's home directory"
task :install do
  replace_all = false
  (all_files - excluded_files).each do |file|
    unless already_symlinked?(File.realpath(file), File.join(ENV['HOME'], ".#{file}"))
      if File.exist?(File.join(ENV['HOME'], ".#{file}"))
        if replace_all
          replace_file(file)
        else
          print "overwrite ~/.#{file}? [ynaq] "
          case $stdin.gets.chomp
          when 'a'
            replace_all = true
            replace_file(file)
          when 'y'
            replace_file(file)
          when 'q'
            exit
          else
            puts "skipping ~/.#{file}"
          end
        end
      else
        link_file(file)
      end
    end
  end
end

def replace_file(file)
  system %Q{rm "$HOME/.#{file}"}
  link_file(file)
end

def link_file(file)
  puts "linking ~/.#{file}"
  system %Q{ln -s "$PWD/#{file}" "$HOME/.#{file}"}
end
