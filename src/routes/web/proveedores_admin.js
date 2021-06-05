const express= require('express');
const router= express.Router();
const pool= require('../../database');

router.get('/',async(req, res) => {
    try {
        const proveedores = await pool.query('select * from proveedores_admin');
        res.json(proveedores);
    }catch (e) {
        res.json({error: e})
    }
});

router.get('/:id',async(req, res) => {
    try {
        const { id } = req.params
        const proveedores = await pool.query(`SELECT * FROM proveedores_admin WHERE id_proveedores_admin = ${id}`);
        res.json(proveedores);
    }catch (e) {
        res.json({error: e})
    }
});

router.post('/',async(req, res) => {
    try{
        const {nombre_proveedor, producto, mes, cantidad, precio} = req.body
        await pool.query(`
            insert into proveedores_admin(nombre_proveedor,producto, mes, cantidad, precio)
            values('${nombre_proveedor}', '${producto}', '${mes}', ${cantidad}, ${precio}) 
        `);
        res.json({response: "Se creo el proveedor"});
    }catch(e){
        res.json({error: e})
    }
});

router.put('/',async(req, res) => {
    try{
        const {nombre_proveedor, producto, mes, cantidad, precio, id_proveedores_admin} = req.body
        await pool.query(`
            UPDATE proveedores_admin SET nombre_proveedor = '${nombre_proveedor}', producto = '${producto}', mes = '${mes}',  cantidad = ${cantidad}, precio = ${precio} WHERE id_proveedores_admin = ${id_proveedores_admin}
        `);
        res.json({response: "Se actualizo el proveedor"});
    }catch(e){
        res.json({error: e})
    }
});

router.delete('/:id', async(req, res) => {
    try{
        const { id } = req.params
        await pool.query(`DELETE FROM proveedores_admin WHERE id_proveedores_admin = ${id}`);
        res.json({response: "Se elimino el proveedor"});
    }catch(e){
        res.json({error: e})
    }
});

module.exports = router