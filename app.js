const path = require('path');
const express = require('express');
const template = require('express-art-template');
const bodyParser = require('body-parser');
const session = require('express-session');
const moment=require('moment');

// const db = require('./db');
const db = require(path.join(__dirname, 'db.js'));
const app = express();
app.use('/assets/', express.static(path.join(__dirname, 'assets')));
app.engine('html', template);
app.use(bodyParser.urlencoded({ extended: false }));
app.use(session({
    secret: '4ey32erfyf3fgpg',
    resave: false,
    saveUninitialized: false
}));
app.get('/message.html', (req, res) => {

    let fileName = path.join(__dirname, 'message.html');

    let flag = req.session.isLogin ? true : false;
    // console.log(req.session);
    res.render(fileName, {
        isLogin: flag
    });

    // res.sendFile(fileName);
});
app.get('/getMsg', (req, res) => {
    let fileName = path.join(__dirname, 'li.html');
    db.abcd('select*from msg', null, (err, result) => {
        if (err) throw err;
        for(var i in result){
            result[i].m_time=moment(result[i].m_time).format('YYYY-MM-DD HH:mm:ss')
        }
        res.render(fileName, {
            xyz: result
        });
    });
});

app.post('/login', (req, res) => {
    let user = req.body.u_name;
    let pwd = req.body.u_pwd;
    // console.log(user);
    // console.log(pwd);
    let sql = 'select*from user where u_name=? and u_pwd=?';
    db.abcd(sql, [user, pwd], (err, result) => {
        if (err) throw err;
        // console.log(result);
        req.session.isLogin = true;
        req.session.userInfo = result[0];
        // console.log(req.session.isLogin)
        // console.log(req.session.userInfo)
        res.send(result.length + '');
    });
});
app.post('/addMsg', (req, res) => {
    req.body.m_name=req.session.userInfo.u_name;
    req.body.m_time = '2018-02-23 22:00:10';
    let sql = "insert into msg set ?";
    db.abcd(sql, req.body, (err, result) => {
        if (err) throw err;
        // req.send(req.body);
        res.send(result.affectedRows + '');
    });
});

app.get('/xyz',(req,res)=>{
    console.log(moment().format('YYYY-MM-DD HH:mm:ss'));
})

app.listen(3000, () => console.log('3000 start'));