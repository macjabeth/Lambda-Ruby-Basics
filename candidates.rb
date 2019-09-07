jane = {
  first_name: 'Jane',
  last_name: 'Doe',
  level: :senior_level,
  age: 30,
  occupation: 'Software Developer',
  employed: true,
  current_salary: 125_000.00,
  languages: %w[Ruby JavaScript Go]
}

sara = {
  first_name: 'Sara',
  last_name: 'Smith',
  level: :mid_level,
  age: 26,
  occupation: 'Software Developer',
  employed: true,
  current_salary: 80_000.00,
  languages: %w[Ruby Python]
}

jason = {
  first_name: 'Jason',
  last_name: 'Gray',
  level: :entry_level,
  age: 23,
  occupation: 'Student',
  employed: false,
  current_salary: 0.00,
  languages: %w[C++ Python]
}

candidates = [jane, sara, jason]

def average_age(people)
  people.map { |who| who[:age] }
        .reduce(0) { |acc, cur| acc + cur } / people.length.to_f
end

puts average_age(candidates)

def language_screening(people, language)
  people.select { |who| who[:languages].include? language }
end

puts language_screening(candidates, 'Python')
puts language_screening(candidates, 'Go')
puts language_screening(candidates, 'JavaScript')