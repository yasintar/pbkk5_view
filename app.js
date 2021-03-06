var express = require('express');
// var app      = express();
var path = require('path');
var cookieParser = require('cookie-parser');
var session = require('express-session');
var bodyParser = require('body-parser');
var nunjucks  = require('nunjucks');
const tl = require('express-tl');

var root = express();

root.use(cookieParser());
root.use(session({
    secret: 'secret',
    resave: true,
    saveUninitialized: true
}));

root.use(bodyParser.urlencoded({extended : true}));
root.use(bodyParser.json());
const methodOverride = require('method-override');
root.use(methodOverride('_method'));
// root.use(express.static(__dirname + '/assets'));


//Apply nunjucks and add custom filter and function (for example).
// root.set('view engine', 'njk');
// var env = nunjucks.configure(['views/'], { // set folders with templates
//     autoescape: true,
//     express: root
// });
root.set('view engine', 'tl');
root.engine('tl',tl);
root.use(express.static(__dirname + '/views'));
// root.set('view engine', 'tl'); 
const fs = require('fs');
// env.addFilter('myFilter', function(obj, arg1, arg2) {
//     console.log('myFilter', obj, arg1, arg2);
//     // Do smth with obj
//     return obj;
// });
// env.addGlobal('myFunc', function(obj, arg1) {
//     console.log('myFunc', obj, arg1);
//     // Do smth with obj
//     return obj;
// });

// //----login
// var auth = require('./controller/auth.js');
// root.use('/auth', auth);
// //----endlogin

// //----login
// var register = require('./controller/register.js');
// root.use('/register', register);
// //----endlogin

// //----dosen
// var dosen = require('./controller/dosen.js');
// root.use('/dosen', dosen);
// //----enddosen

//----mahasiswa
var gate = require('./controller/gate.js');
root.use('/gates', gate);

var user = require('./controller/user.js');
root.use('/users', user);

var gatesystem = require('./controller/gatesystem.js');
root.use('/', gatesystem);

var register = require('./controller/register.js');
root.use('/register', register);

var login = require('./controller/login.js');
root.use('/login', login);



//----endmahasiswa

// //dashboard
// root.get('/dashboard', function(request, response) {
// 	response.sendFile(path.join(__dirname + '/login.html'));
// });

module.exports = root;
