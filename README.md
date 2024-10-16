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

## Models & Associations
   This application features several key models:

- **Instrument**: Represents musical instruments available for rent. Attributes include `name`, `category`, `description`, `price_per_day`, `availability`, `condition`, and an uploaded `image`. Each instrument belongs to a `:user` and can have multiple associated `:line_items`.
- **User**: Contains the user's `name` and `email`, establishing a one-to-many relationship with `:instruments` and `:line_items`.
- **Cart**: Manages cart functionality, allowing users to add instruments and rental dates, and calculate the total price while associating multiple `:line_items` to a user. 
- **LineItem** represents a rental transaction with attributes: `instrument_id`, `cart_id`, `start_date`, `end_date`, `total_days`, linking back to both the user and the instrument involved.

## Validations

The application includes controllers for managing instruments, rentals, users, and carts, supporting full CRUD operations.

Validation rules ensure:

- Instruments have required attributes and valid states.
- Users provide a unique email address ans strong password.

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