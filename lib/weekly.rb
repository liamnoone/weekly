require 'hanami/model'
require 'hanami/mailer'
Dir["#{ __dir__ }/weekly/**/*.rb"].each { |file| require_relative file }

Hanami::Model.configure do
  ##
  # Database adapter
  #
  adapter type: :sql, uri: ENV['DATABASE_URL']

  ##
  # Migrations
  #
  migrations 'db/migrations'
  schema     'db/schema.sql'

  mapping "#{__dir__}/config/mapping"
end.load!

Hanami::Mailer.configure do
  root "#{ __dir__ }/weekly/mailers"

  # See http://hanamirb.org/guides/mailers/delivery
  delivery do
    development :test
    test        :test
    # production :stmp, address: ENV['SMTP_PORT'], port: 1025
  end
end.load!
