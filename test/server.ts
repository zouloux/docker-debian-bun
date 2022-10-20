
const port = parseInt( process.env.PORT ?? "80" );

console.log(`Starting bun server on port ${port}`)

export default {
	port,
	fetch (request) {
		return new Response("Welcome to Bun!");
	},
};