To run question one type `ruby pyramid.rb` in the root directory

Steps to run question two
  -`cd dog_bones` and bundle install
  -Start mysql server and create database `dog_bones_development`
  -Use database `dog_bones_development`
  -Create and grant permission to a user called `admin` with the password `password` (or change `dog_bones/config/database.yml` to match your local root and password)
  -Go into `dog_bones/config/database.yml` and ensure that the socket, username, password and database all are correct.
  -From `/dog_bones` run `rake db:migrate`, then `rake db:seed`

To run question 2.a, once the database is created and seeded you can use the method of your choice to run the raw query in `dogbones/dog_bones_raw_query.sql`

To run question 2.b go into `/dog_bones` and run `ruby dog_bones_ar_query.rb`

To run question three type `print_shapes.rb` in the root directory
