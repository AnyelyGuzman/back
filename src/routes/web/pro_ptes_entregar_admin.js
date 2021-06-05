const express= require('express');
const router= express.Router();
const pool= require('../../database');

router.get('/',async(req, res) => {
    try {
        const pro_entregar = await pool.query('select * from pro_ptes_entregar_admin');
        res.json(pro_entregar);
    }catch (e) {
        res.json({error: e})
    }
});

router.get('/:id',async(req, res) => {
    try {
        const { id } = req.params
        const pro_entregar = await pool.query(`SELECT * FROM pro_ptes_entregar_admin WHERE id_pro_ptes_entregar_admin = ${id}`);
        res.json(pro_entregar);
    }catch (e) {
        res.json({error: e})
    }
});

router.post('/',async(req, res) => {
    try{
        const {nombre_pro, cantidad, precio} = req.body
        await pool.query(`
            insert into pro_ptes_entregar_admin(nombre_pro, cantidad, precio)
            values('${nombre_pro}', ${cantidad}, ${precio}) 
        `);
        res.json({response: "Se creo el producto pendiente por entregar"});
    }catch(e){
        res.json({error: e})
    }
});

router.put('/',async(req, res) => {
    try{
        const {nombre_pro, cantidad, precio, id_pro_ptes_entregar_admin} = req.body
        await pool.query(`
            UPDATE pro_ptes_entregar_admin SET nombre_pro = '${nombre_pro}', cantidad = ${cantidad}, precio = ${precio} WHERE id_pro_ptes_entregar_admin = ${id_pro_ptes_entregar_admin}
        `);
        res.json({response: "Se actualizo el producto pendiente por entregar"});
    }catch(e){
        res.json({error: e})
    }
});

router.delete('/:id', async(req, res) => {
    try{
        const { id } = req.params
        await pool.query(`DELETE FROM pro_ptes_entregar_admin WHERE id_pro_ptes_entregar_admin = ${id}`);
        res.json({response: "Se elimino el producto por entregar"});
    }catch(e){
        res.json({error: e})
    }
});

module.exports = router
































