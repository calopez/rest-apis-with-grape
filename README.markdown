# REST APIs with Grape

This exercise consists of a really simple file uploader API. It uses Grape for
the REST API framework, Sequel for the ORM and Carrierwave to handle uploads.

## Running the tests

To run the tests, run `rake`. However, you need to install the gems in the
Gemfile and migrate the database:

```bash
bundle install
rbenv rehash # if you're using rbenv
sequel -m db/migrations sqlite://db/db.sqlite3
rake
```
