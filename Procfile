web: /bin/bash -l -c "bundle exec puma -C config/puma.rb" && rake db:migrate RAILS_ENV=development && rake db:seed
worker: /bin/bash -l -c "bundle exec sidekiq -e production -C config/sidekiq.yml"