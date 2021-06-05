const express= require('express');
const router= express.Router();
const pool= require('../../database');

router.get('/',async(req, res) => {
    try {
        const perdidas = await pool.query('select * from perdidas_admin');
        res.json(perdidas);
    }catch (e) {
        res.json({error: e})
    }
});

router.get('/reporte',async(req, res) => {
    try {
        const ventas = await pool.query(`SELECT sum(perdida_total)total, mes FROM perdidas_admin GROUP BY mes`);
        res.json(ventas);
    }catch (e) {
        res.json({error: e})
    }
});
router.get('/:id',async(req, res) => {
    try {
        const { id } = req.params
        const perdidas = await pool.query(`SELECT * FROM perdidas_admin WHERE id_perdidas_admin = ${id}`);
        res.json(perdidas);
    }catch (e) {
        res.json({error: e})
    }
});

router.post('/',async(req, res) => {
    try{
        const {producto, mes, perdida_total} = req.body
        await pool.query(`
            insert into perdidas_admin(producto, mes, perdida_total)
            values('${producto}', '${mes}', '${perdida_total}') 
        `);
        res.json({response: "Se creo la perdida"});
    }catch(e){
        res.json({error: e})
    }
});

router.put('/',async(req, res) => {
    try{
        const {producto, mes, perdida_total, id_perdidas_admin} = req.body
        await pool.query(`
            UPDATE perdidas_admin SET producto = '${producto}', mes = '${mes}', perdida_total = ${perdida_total} WHERE id_perdidas_admin = ${id_perdidas_admin}
        `);
        res.json({response: "Se actualizo la perdida"});
    }catch(e){
        res.json({error: e})
    }
});

router.delete('/:id', async(req, res) => {
    try{
        const { id } = req.params
        await pool.query(`DELETE FROM perdidas_admin WHERE id_perdidas_admin = ${id}`);
        res.json({response: "Se elimino la perdida"});
    }catch(e){
        res.json({error: e})
    }
});

module.exports = router