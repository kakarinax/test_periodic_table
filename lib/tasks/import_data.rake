namespace :import do
  desc 'Import periodic table data from json'
  task :data, [:file] => :environment do |_t, args|
    puts 'rails import:data[file_path] required' && return unless args[:file]
    puts "Importing file #{args[:file]}"
  end

  # TODO: Escreva o código para importar os dados aqui
  desc 'populate DB from JSON'
  task populate: :environment do
    file = File.read('./db/data.json')
    elements = JSON.parse(file) do
      elements.each do |element|
        Element.create(element)
        puts element
      end
    end
  end
end
