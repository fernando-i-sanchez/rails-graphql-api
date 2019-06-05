# README

GraphQL in Dev Rails environment seems to use test database by default

1) `rake db:migrate RAILS_ENV=test`
2) `rake db:migrate`
3) `rake db:seed RAILS_ENV=test`
4) `rake db:seed`
5) Testing can be done on `/graphiql`

