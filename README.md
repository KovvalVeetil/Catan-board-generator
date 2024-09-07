# Settlers of Catan Board Generator

## Overview

The Settlers of Catan Board Generator is a web application that generates random Settlers of Catan game boards. This project is built with a Ruby on Rails backend and a JavaScript frontend. The backend handles the board generation logic, while the frontend provides a user interface to trigger the board generation and display the result.

## Features

- Generate random Settlers of Catan game boards with a click of a button.
- Display the generated board on the frontend with tile types and numbers.
- Built with Ruby on Rails for the backend and vanilla JavaScript for the frontend.

## Technologies

- **Backend**: Ruby on Rails
- **Frontend**: HTML, CSS, JavaScript
- **Asset Management**: Rails Asset Pipeline

## Installation

### Prerequisites

- Ruby (version >= 2.7.0)
- Rails (version >= 6.0)
- Node.js (for managing JavaScript dependencies)
- Yarn (for managing JavaScript packages)

### Setup

1. **Clone the Repository**

```bash
git clone https://github.com/your-username/catan-board-generator.git
cd catan-board-generator
```
2. **Install Ruby Gems**

```bash
bundle install
Install JavaScript Packages
```

```bash
yarn install
```

3. **Setup the Database**

Run the following commands to create and migrate the database:

```bash
rails db:create
rails db:migrate
```
4. **Start the Rails Server**

```bash
rails server
```
5. Open in Browser

Visit http://localhost:3000 in your web browser to view the application.

Usage
- Generate a Board

- Click the "Generate Board" button to request a new Settlers of Catan board from the backend.

- View the Board

- The generated board will be displayed on the page with tiles and numbers.

Code Structure
- app/controllers/boards_controller.rb: Contains the logic for generating the board and handling requests.
- app/views/boards/index.html.erb: The main view template for the application.
- app/assets/javascripts/catan_board.js: JavaScript file that handles frontend interactions and updates the UI.
- app/assets/stylesheets/application.css: CSS file for styling the application.
