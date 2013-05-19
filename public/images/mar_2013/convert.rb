Dir["*.jpg"].each do |x|
  next if x =~ /-r/
  out  = File.basename(x, '.jpg') + '-r.jpg'
  if x =~ /vert/
    puts 'vertical:'
    `convert -resize 280x -extent 280x -gravity center #{x} #{out} `
  else
    `convert -resize 570x -extent 570x -gravity center #{x} #{out}`
  end
  puts out

end
