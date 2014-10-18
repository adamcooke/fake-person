# Fake Person

This is a gem which will generate a "person" object for a completely make up human being. The primary reason for creating this is gem is for the Rails Rumble competition where we need to be able to generate fake personalities to allow judges to use our application.

## Installation

Just put the following in your Gemfile and run `bundle`.

```ruby
gem "fake_person", "~> 1.0"
```

## Usage

```ruby
person = FakePerson.new

# Names
person.first_name                 #=> "Alexander"
person.middle_name                #=> "James"
person.last_name                  #=> "Smith"
person.name                       #=> "Alexander Smith"
person.name(:full)                #=> "Alexander James Smith"
person.initials                   #=> "AJS"

# Titles
person.title                      #=> "Mr"
person.name(:formal)              #=> "Mr Smith"
person.name(:formal_with_first)   #=> "Mr Alexander Smith"

# Gender
person.gender                     #=> :male (or :female)

# Date of birth
person.date_of_birth              #=> #<Date: 1954-10-12>
person.age                        #=> 37

# Usernames
person.username                   #=> "alexsmith" (various styles exist)

# E-Mail Addresses
person.email_address              #=> "alexsmith@example.com"
person.free_email_address         #=> "alexsmith@gmail.com" (or various other free providers)

# Activities
person.favorite_activity         #=> "Figure skating"

# Foods
person.favorite_food             #=> "Pizza"

# Likes/Dislikes
person.likes(3)                   #=> ['Driving', 'Fish fingers', 'Jogging']
person.dislikes(2)                #=> ['Kitesurfing', 'Coffee']

# Colour
person.favorite_color             #=> "Purple"
```

## Why not Faker?

Faker is great and everything but the data it generates can be a little strange. This library uses some of the most popular given & surnames in the US & UK.
