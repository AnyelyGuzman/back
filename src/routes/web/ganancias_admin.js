const express= require('express');
const router= express.Router();
const pool= require('../../database');

router.get('/',async(req, res) => {
    try {
        const ganancias = await pool.query('select * from ganancias_admin');
        res.json(ganancias);
    }catch (e) {
        res.json({error: e})
    }
});

router.get('/reporte',async(req, res) => {
    try {
        const ventas = await pool.query(`SELECT sum(ganancia_total)total, mes FROM ganancias_admin GROUP BY mes`);
        res.json(ventas);
    }catch (e) {
        res.json({error: e})
    }
});

router.get('/:id',async(req, res) => {
    try {
        const { id } = req.params
        const ganancias = await pool.query(`SELECT * FROM ganancias_admin WHERE id_ganancias_admin = ${id}`);
        res.json(ganancias);
    }catch (e) {
        res.json({error: e})
    }
});

router.post('/',async(req, res) => {
    try{
        const {producto, mes, ganancia_total} = req.body
        await pool.query(`
            insert into ganancias_admin(producto, mes, ganancia_total)
            values('${producto}', '${mes}', '${ganancia_total}') 
        `);
        res.json({response: "Se creo la ganancia"});
    }catch(e){
        res.json({error: e})
    }
});

router.put('/',async(req, res) => {
    try{
        const {producto, mes, ganancia_total, id_ganancias_admin} = req.body
        await pool.query(`
            UPDATE ganancias_admin SET producto = '${producto}', mes = '${mes}', ganancia_total = ${ganancia_total} WHERE id_ganancias_admin = ${id_ganancias_admin}
        `);
        res.json({response: "Se actualizo la ganancia"});
    }catch(e){
        res.json({error: e})
    }
});

router.delete('/:id', async(req, res) => {
    try{
        const { id } = req.params
        await pool.query(`DELETE FROM ganancias_admin WHERE id_ganancias_admin = ${id}`);
        res.json({response: "Se elimino la ganancia"});
    }catch(e){
        res.json({error: e})
    }
});

module.exports = router