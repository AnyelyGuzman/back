const express= require('express');
const router= express.Router();
const pool= require('../../database');

router.get('/',async(req, res) => {
    try {
        const cliente = await pool.query('select * from clientes_admin');
        res.json(cliente);
    }catch (e) {
        res.json({error: e})
    }
});

router.get('/:id',async(req, res) => {
    try {
        const { id } = req.params
        const cliente = await pool.query(`SELECT * FROM clientes_admin WHERE id_clientes_admin = ${id}`);
        res.json(cliente);
    }catch (e) {
        res.json({error: e})
    }
});

router.post('/',async(req, res) => {
    try{
        const {nombre, apellido, telefono} = req.body
        await pool.query(`
            insert into clientes_admin(nombre, apellido, telefono)
            values('${nombre}', '${apellido}', ${telefono}) 
        `);
        res.json({response: "Se creo el cliente"});
    }catch(e){
        res.json({error: e})
    }
});

router.put('/',async(req, res) => {
    try{
        const {nombre, apellido, telefono, id_clientes_admin} = req.body
        await pool.query(`
            UPDATE clientes_admin SET nombre = '${nombre}', apellido = '${apellido}', telefono = ${telefono} WHERE id_clientes_admin = ${id_clientes_admin}
        `);
        res.json({response: "Se actualizo el cliente"});
    }catch(e){
        res.json({error: e})
    }
});

router.delete('/:id', async(req, res) => {
    try{
        const { id } = req.params
        await pool.query(`DELETE FROM clientes_admin WHERE id_clientes_admin = ${id}`);
        res.json({response: "Se elimino el cliente"});
    }catch(e){
        res.json({error: e})
    }
});

module.exports = router