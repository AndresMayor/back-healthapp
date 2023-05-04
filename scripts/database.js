var nano = require('nano');

module.exports = nano(process.env.DATABASE_URL || 'http://user1:admin123@couchdb:5984');
