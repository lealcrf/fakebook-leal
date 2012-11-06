source "http://rubygems.org"

gem "rails", "~> 3.2.8"
gem "jquery-rails"
gem "pg", :group => :production
gem "sqlite3", :group => :development
gem "thin"
gem "mini_magick"
gem "carrierwave"
gem "fog" # gem para conectar no servidor S3 da amazon.
gem "devise"
gem "oily_png"
gem "friendly_id" # gem para formatar urls quando você não quer que o ID apareça.
gem "simple_form"
gem "rufus-scheduler" # gambi para ficar chamando o site no heroku de 15 em 15 minutos e evitar o tempo de load quando o site fica sem acesso por muito tempo.
group :assets do
  gem "compass", "~> 0.13.alpha.0"
  gem "compass-rails", "~> 1.0.3"
  gem "sass", "~> 3.2.0.alpha.278"
  gem "sass-rails", "~> 3.2.5"
  gem "susy", "~> 1.0.rc.4"
  gem "coffee-rails", "~> 3.2.2"
  gem "uglifier", "~> 1.2.4"
end

group :development do
  gem "foreman"
end
