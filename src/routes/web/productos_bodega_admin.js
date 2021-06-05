const express= require('express');
const router= express.Router();
const pool= require('../../database');

router.get('/',async(req, res) => {
    try {
        const productos = await pool.query('select * from productos_bodega_admin');
        res.json(productos);
    }catch (e) {
        res.json({error: e})
    }
});

router.get('/:id',async(req, res) => {
    try {
        const { id } = req.params
        const product = await pool.query(`SELECT * FROM productos_bodega_admin WHERE id_productos_bodega = ${id}`);
        res.json(product);
    }catch (e) {
        res.json({error: e})
    }
});

router.post('/',async(req, res) => {
    try{
        const {nombre, cantidad_total, precio_total} = req.body
        await pool.query(`
            insert into productos_bodega_admin(nombre, cantidad_total, precio_total)
            values('${nombre}', '${cantidad_total}', '${precio_total}') 
        `);
        res.json({response: "Se creo el producto en bodega"});
    }catch(e){
        res.json({error: e})
    }
});

router.put('/',async(req, res) => {
    try{
        const {nombre, cantidad_total, precio_total, id_productos_bodega} = req.body
        await pool.query(`
            UPDATE productos_bodega_admin SET nombre = '${nombre}', cantidad_total = '${cantidad_total}', precio_total = '${precio_total}' WHERE id_productos_bodega = ${id_productos_bodega}
        `);
        res.json({response: "Se actualizo el producto en bodega"});
    }catch(e){
        res.json({error: e})
    }
});

router.delete('/:id', async(req, res) => {
    try{
        const { id } = req.params
        await pool.query(`DELETE FROM productos_bodega_admin WHERE id_productos_bodega = ${id}`);
        res.json({response: "Se elimino el producto de bodega"});
    }catch(e){
        res.json({error: e})
    }
});

module.exports = router