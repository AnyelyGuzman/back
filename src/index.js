const express=  require('express');
const morgan= require('morgan');
const exphbs= require('express-handlebars');
const path= require('path');
const { allowedNodeEnvironmentFlags } = require('process');
var cors = require('cors')

//inicio
const app=express();

//configuraciones
app.set('port', process.env.PORT || 4000);

app.use(cors())
app.options('*', cors())

//peticiones
app.use(morgan('dev'));
app.use(express.urlencoded({extends:false}));
app.use(express.json());
    
//variables globales 

app.use((req,res,next)=>{
    next();
})

//rutas movil
app.use(require('./routes'));
app.use('/usuarios', require('./routes/usuarios'));
app.use('/productos', require('./routes/productos'));
app.use('/envios', require('./routes/envios'));
app.use('/ordenes', require('./routes/ordenes'));
app.use('/comentarios', require('./routes/comentarios'));
app.use('/parcial3', require('./routes/parcial3'));


//Rutas web
app.use('/proveedores_admin', require('./routes/web/proveedores_admin'));
app.use('/clientes_admin', require('./routes/web/clientes_admin'));
app.use('/ventas_admin', require('./routes/web/ventas_admin'));
app.use('/ganancias_admin', require('./routes/web/ganancias_admin'));
app.use('/perdidas_admin', require('./routes/web/perdidas_admin'));
app.use('/productos_bodega_admin', require('./routes/web/productos_bodega_admin'));
app.use('/pro_ptes_llegar_admin', require('./routes/web/pro_ptes_llegar_admin'));
app.use('/pro_ptes_entregar_admin', require('./routes/web/pro_ptes_entregar_admin'));
app.use('/personal_transportador_admin', require('./routes/web/personal_transportador_admin'));
app.use('/vehiculo_admin', require('./routes/web/vehiculo_admin'));
app.use('/parcial', require('./routes/parcial'));


//public
app.unsubscribe(express.static(path.join(__dirname, 'public'))); 


//inicia el servidor
app.listen(app.get('port'),()=>{
    console.log('Server on port',app.get('port'));
});

