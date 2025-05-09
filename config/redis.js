const redis = require('redis');

const client = redis.createClient({
  url: process.env.REDIS_URL,
  password: process.env.REDIS_PASSWORD,
  database:process.env.REDIS_DATABASE,
  username:process.env.REDIS_USERNAME
});

client.on('error', (err) => console.error('Redis Client Error', err));

client.connect();

module.exports = client;
