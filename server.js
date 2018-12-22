const path = require('path');
const statics = require('koa-static');
const Koa = require('koa');

const app = new Koa();
const url = process.env.ROOT || '';
console.log('url', url);

const assets = path.resolve(__dirname, url);

app.use(statics(assets));
app.listen(3000);
