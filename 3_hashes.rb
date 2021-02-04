fullstack_cr = { name: 'curso Full Stack Costa Rica', country: 'Costa Rica', students: 28, modules: 10  }

puts "Este es el #{fullstack_cr[:name]}, que se dicta en #{fullstack_cr[:country]}, con un total de #{fullstack_cr[:students]} estudiantes y consta de #{fullstack_cr[:modules]} módulos."

fullstack_cr.each do |key, value|
    puts("#{key}: #{value}")
end
