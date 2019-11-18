var http = require('http');

var server = http.createServer(function (req, res) {

	if (req.method === 'POST') {

		req.on('data', chunk => {

			var content = JSON.parse(chunk);
			
			if (true) {
				
				// Request a pull for the local server
				
				console.log('Push requested!');

			}
			
			res.end('Ok');
		});
	}
	else {

		res.writeHead(200, {'Content-Type': 'text/plain'});
		res.end('Hello World!\n');
	}
});

console.log('Started server on http://0.0.0.0:8080/');

server.listen(8080);


