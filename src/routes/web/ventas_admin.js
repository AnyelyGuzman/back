const express= require('express');
const router= express.Router();
const pool= require('../../database');

router.get('/',async(req, res) => {
    try {
        const ventas = await pool.query('select * from ventas_admin');
        res.json(ventas);
    }catch (e) {
        res.json({error: e})
    }
});

router.get('/reporte',async(req, res) => {
    try {
        const ventas = await pool.query(`SELECT sum(cantidad * precio) total, mes FROM ventas_admin GROUP BY mes`);
        res.json(ventas);
    }catch (e) {
        res.json({error: e})
    }
});

router.get('/:id',async(req, res) => {
    try {
        const { id } = req.params
        const ventas = await pool.query(`SELECT * FROM ventas_admin WHERE id_ventas = ${id}`);
        res.json(ventas);
    }catch (e) {
        res.json({error: e})
    }
});

router.post('/',async(req, res) => {
    try{
        const {producto, cantidad, precio, mes} = req.body
        await pool.query(`
            insert into ventas_admin(producto, cantidad, precio, mes)
            values('${producto}', ${cantidad}, ${precio}, '${mes}') 
        `);
        res.json({response: "Se creo la venta"});
    }catch(e){
        res.json({error: e})
    }
});

router.put('/',async(req, res) => {
    try{
        const {producto, cantidad, precio, mes, id_ventas} = req.body
        await pool.query(`
            UPDATE ventas_admin SET producto = '${producto}', cantidad = ${cantidad}, precio = ${precio}, mes = '${mes}' WHERE id_ventas = ${id_ventas}
        `);
        res.json({response: "Se actualizo la venta"});
    }catch(e){
        res.json({error: e})
    }
});

router.delete('/:id', async(req, res) => {
    try{
        const { id } = req.params
        await pool.query(`DELETE FROM ventas_admin WHERE id_ventas = ${id}`);
        res.json({response: "Se elimino la venta"});
    }catch(e){
        res.json({error: e})
    }
});

module.exports = router