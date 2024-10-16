# MusicGear Hub

MusicGear Hub is a simple Ruby on Rails application that enables musicians to rent musical equipment such as instruments, audio gear, accessories. The platform allows users to create accounts, list their gear for rent, and manage rentals efficiently. Please note that the checkout functionality is not yet implemented.

## Technologies

- Ruby on Rails
- SQLite database
- ActiveRecord for database interactions.
- Active Storage for files uploads
- Devise for authentication
- Font Awesome
- Simple Form for simplified form generation
- Front-End Libraries

## Features

- User authentication and authorization.
- Create, update, and delete instrument listings.
- Attach images to instrument listings using Active Storage.
- View instrument details with categories, pricing, and availability.
- Conditional validation for deleting instruments if referenced by line items.
- Responsive design with Bootstrap.
- Dynamic form handling with validation for instrument data.
- Upload and display images for instruments.

## Installation

1. Clone the repository to your local machine.
2. Install required gems `bundle install`. 
3. Set up the database:
   ``` 
   rails db:create
   rails db:migrate
   rails db:seed 
   ```
4. Start `rails server`.

## Running the Application
   Once the server is running, you can access the application in your web browser at local host.

## Image Uploads

  This application uses Active Storage for uploading and attaching images to instruments. 
  Make sure to configure Active Storage with a cloud service like AWS S3 or use the default local storage for development.

## Acknowledgments
   Thanks to ***Code the Dream*** for their training and guidance.