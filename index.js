var express = require("express");
var app = express();

app.use( express.static('dist/personal-website/browser'));



app.listen(8080);