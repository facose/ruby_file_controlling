file = File.open("grades.txt")
data = file.readlines.map(&:chomp)
file.close

new_data = data.map{ |line| line.gsub(",", "") }.map{ |line| line.split(' ') }
grades_avg = new_data.map do |student|
    grades = student[1..-1]
    average = grades.map(&:to_i).sum / grades.length
    [student[0], average]
end

student_avg = grades_avg.map{ |student| student.join(', ') }
print student_avg

File.open('average.txt', 'w') do |file|
    student_avg.each{ |line| file.puts line }
end    