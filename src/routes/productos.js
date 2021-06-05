const express= require('express');
const router= express.Router();
const pool= require('../database');

router.get('/',async(req, res) => {
    try {
        const productos = await pool.query('select * from productos');
        res.json(productos);
    }catch (e) {
        res.json({error: e})
    }
});

router.get('/:id',async(req, res) => {
    try {
        const { id } = req.params
        const productos = await pool.query(`SELECT * FROM productos WHERE id_productos = ${id}`);
        res.json(productos);
    }catch (e) {
        res.json({error: e})
    }
});

router.post('/',async(req, res) => {
    try{
        const {nombre, cantidad, precio} = req.body
        await pool.query(`
            insert into productos(nombre, cantidad, precio)
            values('${nombre}', ${cantidad}, ${precio}) 
        `);
        res.json({response: "Se creo el producto"});
    }catch(e){
        res.json({error: e})
    }
});

router.put('/',async(req, res) => {
    try{
        const {nombre, cantidad, precio, id} = req.body
        await pool.query(`
            UPDATE productos SET nombre = '${nombre}', cantidad = ${cantidad}, precio = ${precio} WHERE id_productos = ${id}
        `);
        res.json({response: "Se actualizo el producto"});
    }catch(e){
        res.json({error: e})
    }
});

router.delete('/:id', async(req, res) => {
    try{
        const { id } = req.params
        await pool.query(`DELETE FROM productos WHERE id_productos = ${id}`);
        res.json({response: "Se elimino el usuario"});
    }catch(e){
        res.json({error: e})
    }
});

module.exports = router