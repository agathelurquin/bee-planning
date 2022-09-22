# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

require 'faker'

def create_user(name)
  user = User.new(
    email: "#{name}@gmail.com",
    password: '123456',
    name: name
  )
  # user.avatar.attach(io: File.open('app/assets/images/default-avatar-icon.png'),
  #                    filename: 'default-avatar-icon.png',
  #                    content_type: 'image/png')
  # user.avatar.attach(io: File.open(path),
  #                    filename: image)
  user.save!
  return user
end

def create_task(user, name)
  task = Task.new(
    # name: Faker::Hobby.activity,
    # project: Project.all.sample,
    # description: Faker::Lorem.sentence(word_count: 3),
    user: user,
    name: name,
    status: 'open',
    due_date: Faker::Date.forward,
    creation_date: Time.now
  )
  task.save!
end

puts '*****************'
puts 'Cleaning the database'
puts '*****************'

Task.destroy_all
User.destroy_all

puts '************************'
puts 'Creating users'
puts '************************'

aude = create_user('aude')
eleonore = create_user('eleonore')
josephine = create_user('josephine')
penelope = create_user('penelope')
philippine = create_user('philippine')

create_task(aude, 'Infectio')
create_task(aude, 'Digestion')
create_task(aude, 'Respiration')
create_task(aude, 'Circulation')
create_task(aude, 'cancérologie')
create_task(aude, 'pédiatrie')

create_task(eleonore, 'UI')
create_task(eleonore, 'Webdesign')
create_task(eleonore, 'Typo')
create_task(eleonore, 'Couleurs')

create_task(josephine, 'Finance')
create_task(josephine, 'Faits divers')
create_task(josephine, 'Ecologie')
create_task(josephine, 'Politique')
create_task(josephine, 'Cause animalière')

create_task(penelope, 'Droit Civil')
create_task(penelope, 'Droit Constitutionnel')
create_task(penelope, 'Droit Administratif')
create_task(penelope, 'Droit Pénal')
create_task(penelope, 'Droit UE')
create_task(penelope, 'Droit des Affaires')

create_task(philippine, 'Fonds dìnvestissement')
create_task(philippine, 'Start-up')
create_task(philippine, 'Business Model')
create_task(philippine, 'Negociation')
create_task(philippine, 'International Business')

puts 'Seeding completed (❁´◡`❁)'
