namespace :dev do
  desc 'Creates sample data for local development'
  task prime: ['db:setup'] do
    unless Rails.env.development?
      raise 'This task can only be run in the development environment'
    end

    require 'factory_girl_rails'

    create_places
  end

  def create_places
    header 'places'

    FactoryGirl.create(:place,
                       :active,
                       kind: 'company',
                       name: 'Craftsmen',
                       street: '25 rue Lenepveu',
                       zip_code: '49000',
                       city: 'Angers',
                       latitude: 47.472041,
                       longitude: -0.551269,
                       url: 'http://craftsmen.io')
    FactoryGirl.create(:place,
                       :active,
                       kind: 'company',
                       name: 'Playmoweb',
                       street: '25 rue Lenepveu',
                       zip_code: '49000',
                       city: 'Angers',
                       latitude: 47.472041,
                       longitude: -0.551269,
                       url: 'http://playmoweb.com')
    FactoryGirl.create(:place,
                       :active,
                       kind: 'nonprofit',
                       name: 'Mainelabs',
                       street: '12 Place Louis Imbach',
                       zip_code: '49000',
                       city: 'Angers',
                       latitude: 47.473826,
                       longitude: -0.548895,
                       url: 'http://mainelabs.fr')
    FactoryGirl.create(:place,
                       :active,
                       kind: 'accelerator',
                       name: 'Angers technopole',
                       street: '8 Rue André le Notre 49066 ',
                       zip_code: '49100',
                       city: 'Angers',
                       latitude: 47.478667,
                       longitude: -0.60619,
                       url: 'http://angerstechnopole.com/')
  end

  def header(msg)
    puts "Creating #{msg}\n"
  end
end
