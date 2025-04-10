// Simple Node.js app
const http = require('http');

const server = http.createServer((req, res) => {
  res.statusCode = 200;
  res.end('This is a CI/CD deployment by Abhimanyu using GitHub actions along with Docker, ECR. TESTTTT1');
});

server.listen(3000, '0.0.0.0',() => {
  console.log('Server running at http://localhost:3000/');
});
