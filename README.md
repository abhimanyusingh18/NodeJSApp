# Node.js CI/CD with GitHub Actions

This project demonstrates a simple continuous integration and deployment setup for a Node.js app using GitHub Actions.

## Features

- ✅ Auto installs dependencies
- ✅ Runs linting and tests
- 🚀 Simulates deployment on push to `main`

## Scripts

```bash
npm run lint     # Lint the code
npm test         # Run basic tests
npm start        # Start the local app
```

## CI/CD Workflow

Located in `.github/workflows/ci.yml`, triggered on push or pull request to `main`.
