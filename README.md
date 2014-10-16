# Fake Person

This is a gem which will generate a "person" object for a completely make up human being. The primary reason for creating this is gem is for the Rails Rumble competition where we need to be able to generate fake personalities to allow judges to use our application.

## Installation

Just add `fake_person` to your Gemfile.

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
```
