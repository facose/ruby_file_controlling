file = File.open('users.txt')
data = file.readlines.map(&:chomp)
file.close

new_data = data.map {|line| line.gsub("perros", "gatos")}

File.open("copy.txt", "w") do |file|
    new_data.each {|line| file.puts line}
end    