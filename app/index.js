// Simple Node.js app
const http = require('http');

const server = http.createServer((req, res) => {
  res.statusCode = 200;
  res.end('Hello from Node.js CI/CD app!');
});

server.listen(3000, () => {
  console.log('Server running at http://localhost:3000/');
});
