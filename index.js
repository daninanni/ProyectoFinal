// llamar dependencias  //
require ('dotenv').config();
const path = require ('path');            //indica dne esta cada cosa (no es un pack q se descarga, vienen con express)//
const express = require ('express');
const hbs = require ('hbs'); 


const app = express ();         //parseamos express//
const port = process.env.PORT;

//SETTINGs //
app.set ('views', path.join(__dirname, 'views'));
app.set('view engine', 'hbs');                          //motor de plantilla//


//  MIDDLEWARE (fns de express)  //
app.use (express.json());
app.use(express.urlencoded({extended:false}));
app.use('/assets', express.static (__dirname + '/public'));
app.use(require ('./router/router'));


//  HANDLERSBARS (acceso a las vistas)  //
                                             
hbs.registerPartials (__dirname + "/views/partials/")






//SERVER LISTENING//
app.listen(port, ()=>{
    console.log(`Puerto corriendo http://localhost:${port} jejejejeje`);
});

