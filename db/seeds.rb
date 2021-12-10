require 'faker'
Course.destroy_all
Student.destroy_all
Volunteer.destroy_all
User.destroy_all

puts "begin seeds"
student = User.create!(email: 'guilherme.santos@gmail.com',
  password: '123123',
  role: 'student'
)

user_01 = User.create!(email: 'jtavaresb@ibm.com',
  password: '123123',
  role: 'volunteer'
)
user_02 = User.create!(email: 'jsilva@oi.com',
  password: '123123',
  role: 'volunteer'
)
user_03 = User.create!(email: 'jbraz@vivo.com',
  password: '123123',
  role: 'volunteer'
)
user_04 = User.create!(email: 'carlosbrasil@tim.com',
  password: '123123',
  role: 'volunteer'
)
puts "done user"

volunteer_01 = Volunteer.create!(
    full_name: 'José Tavares',
    github: '/jtavares',
    background: 'Full stack developer',
    user: user_01
  )
volunteer_02 = Volunteer.create!(
    full_name: 'Jamil da Silva',
    github: '/jsilva',
    background: 'Cybersecurity Manager',
    user: user_02
  )
volunteer_03 = Volunteer.create!(
  full_name: 'Jamila S. Braz',
  github: '/jamilabraz',
  background: 'Front end developer',
  user: user_03
)
volunteer_04 = Volunteer.create!(
  full_name: 'Carlos J. Gomes brasil',
  github: '/cbrasil',
  background: 'Back end developer',
  user: user_04
)
puts "done volunteer"

Student.create!(
    full_name: "Guilherme Santos",
    age:'21',
    nationality: 'Brasileira',
    city_at: 'Rio de Janeiro',
    city_to: 'Chicago',
    phone_number: '55 21 99999 9999',
    link_to_github: '/guilhermesantos',
    link_to_linkedin: '/guilhermesantos',
    passport: 'Sim',
    remoto_work: 'Sim',
    work_abroad: 'Sim',
    user: student
  )
puts "done students"

course = Course.create!(
  student_id: Student.first.id,
  description: 'Our web development course is an immersive experience that takes you from beginner to junior software developer in 9 weeks.',
  started_at: '01.2022',
  finalized_at: '04.2022',
  title: 'Web Development',
  company: 'Le Wagon'
)
course = Course.create!(
  student_id: Student.first.id,
  description: 'Our Data Science course takes you from Data Enthusiast to Data Scientist in 9 weeks. ',
  started_at: '02.2022',
  finalized_at: '10.2022',
  title: 'Data Science',
  company: 'Le Wagon'
)
puts "done course"

fields_of_interest = FieldsOfInterest.create!(
  student_id: Student.first.id,
  interest: 'Web Development'
)
puts "done fields interest"

2.times do
  Language.create!(
  student_id: Student.first.id,
  language: 'English',
  score:'86'
)
end
puts "done language"

professional_experience = ProfessionalExperience.create!(
  student_id: Student.first.id,
  description:'Atendimento ao cliente com vendas de perfumaria',
  started_at:'10.2019',
  ocupation: 'Vendedor',
  company: "Natura"
)

puts "done professional experience"

skill = Skill.create!(
  name: "Front end",
  skill_type: "development"
)

puts "done skill"

student_skill = StudentSkill.create!(
  score:'50',
  student_id: Student.first.id,
  skill_id: skill.id
)

puts "done students skills"

video = Video.create!(
  student_id: Student.first.id,
  url: Faker::Internet.url
)
puts "done video"

review = Review.create!(
  review_text: "",
  student_id: Student.first.id,
  volunteer: volunteer_04
)
review = Review.create!(
  review_text: "",
  student_id: Student.first.id,
  volunteer_id: volunteer_03.id
)
review = Review.create!(
  review_text: "",
  student_id: Student.first.id,
  volunteer: volunteer_01
)
review = Review.create!(
  review_text: "",
  student_id: Student.first.id,
  volunteer: volunteer_02
)

puts "skill video"
