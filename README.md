# Blog App - React Lifecycle Hands-on

## Objective

This project demonstrates the React Component Lifecycle by fetching and displaying blog posts from an external REST API.

## Technologies Used

- React.js
- JavaScript (ES6)
- Fetch API
- Node.js
- npm

## Project Structure

```
blogapp
│
├── src
│   ├── App.js
│   ├── Posts.js
│   ├── Post.js
│   ├── index.js
│   └── App.css
│
├── package.json
└── README.md
```

## Features

- Class Component
- State Management
- Fetch API
- componentDidMount()
- componentDidCatch()
- Rendering Dynamic Data

## API Used

```
https://jsonplaceholder.typicode.com/posts
```

## Lifecycle Flow

```
Constructor
    ↓
Render
    ↓
componentDidMount
    ↓
Fetch Data
    ↓
Update State
    ↓
Render Updated Data
```

## How to Run

Install dependencies:

```bash
npm install
```

Start the application:

```bash
npm start
```

Open:

```
http://localhost:3000
```

## Learning Outcomes

- Created React Class Components
- Used Component State
- Implemented componentDidMount()
- Implemented componentDidCatch()
- Used Fetch API to consume REST services
- Rendered dynamic data using map()

## Author

Mrudula Arun Sonawane