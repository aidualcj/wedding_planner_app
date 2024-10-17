Note: This project is still in early stage development, and many features may not be fully functional or visually complete.
# Wedding Planner App

This is a wedding planner web application built with Ruby on Rails. It helps users organize wedding events by managing guests, to-do lists (tasks), and expenses related to the event. **Note**: The app is still in development and some features are yet to be implemented and polished.

## Features

- Manage multiple events
- Create, view, and edit guest lists for each event
- Organize tasks into categorized to-do lists
- Assign tasks to specific guests
- Manage expenses related to the event

## Requirements

- Ruby 3.x
- Rails 7.x
- PostgreSQL
- Node.js
- Yarn

## Setup

1. Clone the repository:
    ```bash
    git clone https://github.com/aidualcj/wedding_planner_app.git
    ```

2. Navigate to the project directory:
    ```bash
    cd wedding_planner_app
    ```

3. Install dependencies:
    ```bash
    bundle install
    yarn install
    ```

4. Set up the database:
    ```bash
    rails db:create
    rails db:migrate
    ```

5. Start the Rails server:
    ```bash
    rails s
    ```

6. Start the Webpack development server:
    ```bash
    ./bin/webpack-dev-server
    ```

## Usage

- After running the app, navigate to `http://localhost:3000` in your browser to use the application.
- You can create a new event, add guests, manage tasks, and track expenses.
  
## Current Limitations

- The design is still basic and will be improved.
- Some features are in progress, such as more advanced task management.
  
## Testing

To run the tests, use:
```bash
rails test
