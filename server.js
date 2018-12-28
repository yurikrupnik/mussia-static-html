const path = require('path');
const Koa = require('koa');
const statics = require('koa-static');

const app = new Koa();
const url = process.env.ROOT_PATH;
const assets = path.resolve(__dirname, url);

app.use(statics(assets));
app.listen(80);
