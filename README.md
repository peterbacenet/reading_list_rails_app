# README INSTRUCTIONS
Lesson 1
Instructions
Create a new rails application for our reading list application. rails new reading_list_api --api --minimal -T Note: Do not forget the --api! The rails application will not be configured correctly if you do! If you forget it, delete the application and re-create it.
Configure cors by uncommenting the gem ‘rack-cors’ and going to config>initializers> cors.rb Uncomment the following and replace 'example.com' with *
Rails.application.config.middleware.insert_before 0, Rack::Cors do
   <!-- allow do
     origins '*'

     resource '*',
       headers: :any,
       methods: [:get, :post, :put, :patch, :delete, :options, :head]
   end
 end -->
Create the following migrations for reading_list Reading List ERD Note: you do not need to write the tables yourself. There is a way to automatically generate the table with the corresponding columns using rails generators

Go to Models and add the 6 association macros necessary for many-to-many between users and books..

In the rails console OR in seeds create seeds for user and books and test your relationships. (You'll want to create books that are related to users, try checking out the has_many docs for examples). Feel free to use these if you like:

user_1 = User.create(
  username: 'tester1',
  email: 'test@test.com',
  bio: 'testing is my life!'
)
user_2 = User.create(
  username: 'tester2',
  email: 'testing@test.com',
  bio: 'to test or not to test, that is the question'
)

blink = user_1.books.create(
  title: 'Blink',
  author: 'Malcolmn Gladwell',
  description: "Blink is a book about how we think without thinking, about choices that seem to be made in an instant-in the blink of an eye-that actually aren't as simple as they seem. ... Now, in Blink, he revolutionizes the way we understand the world within.",
  cover_image_url: "https://res.cloudinary.com/dnocv6uwb/image/upload/v1631945315/ulnbyvuxti0mklh4ya46.jpg"
)

the_way_of_kings = user_1.books.create(
  title: 'The Way of Kings', 
  author: 'Brandon Sanderson',
  description: "The Way of Kings is an epic fantasy novel written by American author Brandon Sanderson and the first book in The Stormlight Archive series. The novel was published on August 31, 2010, by Tor Books. The Way of Kings consists of one prelude, one prologue, 75 chapters, an epilogue and 9 interludes. It was followed by Words of Radiance in 2014, Oathbringer in 2017 and Rhythm of War in 2020. A leatherbound edition is scheduled to be released in 2021.",
  cover_image_url: "https://res.cloudinary.com/dnocv6uwb/image/upload/v1631946131/menvv6ioanlrbh0qi35d.jpg"
)

name_of_the_wind = user_1.books.create(
  title: 'The Name of the Wind', 
  author: 'Patrick Rothfuss',
  description: "The Kingkiller Chronicle tells the life story of a man named Kvothe. In the present day, Kvothe is a rural innkeeper, living under a pseudonym. In the past, he was a wandering trouper and musician who grew to be a notorious arcanist (or wizard), known as the infamous \"Kingkiller\".

The series is framed as the transcription of his three-day-long oral autobiography, where he \"trouped, traveled, loved, lost, trusted and was betrayed.\" Present-day \"interludes\" concern his life as an innkeeper, with each present day depicted in a separate book.

The series is a secondary world fantasy; the setting is named Temerant. It has its own magic system, mixing alchemy, sympathetic magic, sygaldry (a form of runic magic combined with medieval engineering), and naming (a type of magic that allows the user to command the classical elements and objects), plus others.",
  cover_image_url: "https://res.cloudinary.com/dnocv6uwb/image/upload/v1631946293/220px-TheNameoftheWind_cover_jq2xut.jpg"

In config/routes.rb add an index and show route for books

In the Books controller add an index action that renders all of the books in json. Make a show action that renders 1 book’s information given the id (as a bonus, try to include the book’s users as well.

Run your rails server and go to the browser (or use postman) to check that your json is being rendered for both routes