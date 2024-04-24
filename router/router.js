
const { Router } = require('express');
const router = new Router();
const mysql = require('mysql');


//  CONEXION A LA BASE DE DATOS  //
const conn = mysql.createConnection({
    host:'localhost',
    user:'root', 
    password:'',
    database:'materias'
});


// manejo de errores, que pasa si se conecta, que pasa sino se conecta//
conn.connect ((err) => {
    if (err) throw err;
    console.log('conexion establecida... ieiii')
});


//  SELECT  lee datos de mi base de datos y los muestra en el front  **1 (ver mates.hbs) //
router.get('/',(req , res)=>{                                    
    res.render('index')
   });



router.get('/mates', (req, res) => {
    let sql= "SELECT * FROM matematica";
let query = conn.query(sql, (err, results)=> {
    if(err) throw err;
    res.render('mates',{
        results: results
      }); 
    });
  });


 //para cuando vaya agregando otras materias// 
//   router.get('/literatura', (req, res) => {
//     let sql= "SELECT * FROM literatura";
// let query = conn.query(sql, (err, results)=> {
//     if(err) throw err;
//     res.render('literatura',{
//         results: results
//       }); 
//     });
//   });

//  INSERTAR  guardamos datos en la base desde la pagina (para el front agregamos un modal que agrege los datos)  //
router.post('/save', (req,res)=>{
    let data = {year: req.body.year, curso: req.body.curso, tarea: req.body.tarea};
    let sql = "INSERT INTO matematica SET ? ";
    let query = conn.query (sql, data, (err, results)=>{
        if (err) throw err;
        res.redirect('mates');                                                         
    });
});

// router.post('/save', (req,res)=>{
//     let data = {year: req.body.year, curso: req.body.curso, tarea: req.body.tarea};
//     let sql = "INSERT INTO literatura SET ? ";
//     let query = conn.query (sql, data, (err, results)=>{
//         if (err) throw err;
//         res.redirect('literatura');                                                         
//     });
// });



// //  ACTUALIZAR   no lo voy a usar porque no quiero que se pueda editar los archivos (que todavia no son archivos) que ya se subieron (en mates.hbs el modal para esta tarea no está)// 
// router.post('/update', (req,res)=>{
//     let sql = "UPDATE matematica SET year='"+ req.body.year+"'curso='"+req.body.curso+"'tarea='"+req.body.tarea+"'WHERE id="+req.body.id;
//     let query = conn.query (sql, (err, results)=>{
//         if (err) throw err;
//         res.redirect('/');                                                         
//     });
// });


// BORRAR //
//router.post('/delete', (req,res)=>{
//     let sql= "DELETE FROM * matematica WHERE id="+req.body.id+"";
//     let query =conn.query (sql,(err,results)=>{
//         if (err) throw err;
//         res.redirect('/');
//     });
// });


// Envio de mail   (que me pa que tampoco lo voy a usar)
// router.get('/contacto',(req, res) => {
//     res.render('contacto');
// });
    
//     router.post("/send-email",(req, res) =>{
//     const nombre = req.body.nombre;
//     const apellido = req.body.apellido;
//     const email = req.body.email;
//     const asunto = req.body.asunto;
//     const mensaje = req.body.mensaje;

//     const transporter = nodemailer.createTransport({
//         host: process.env.SMTP_HOST,
//         port: process.env.SMTP_PORT,
//         secure: false,
//         auth: {
//         user: process.env.SMTP_USER,
//         pass: process.env.SMTP_PASS,
//     },
//     });
//     const mailOptions={
//         from: "Remitente",
//         to:"naranjaspintdas@gmail.com",
//         subject: `${asunto}`,
//         html:`<h1>Consulta de ${nombre} ${apellido} sobre ${mensaje}. Responder a ${email}</h1>`,
//     };

//     transporter.sendMail(mailOptions,(error, info)=>{
//         if(error){
//         res.status(500).send(error.message);
//             }else{
//             console.log("Email enviado")
//             res.status(200).jsonp(reqbody);
//             }
//     });
// });

module.exports = router;