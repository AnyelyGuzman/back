const express= require('express');
const router= express.Router();
const pool= require('../../database');

router.get('/',async(req, res) => {
    try {
        const vehiculo = await pool.query('select * from vehiculo_admin');
        res.json(vehiculo);
    }catch (e) {
        res.json({error: e})
    }
});

router.get('/:id',async(req, res) => {
    try {
        const { id } = req.params
        const vehiculo = await pool.query(`SELECT * FROM vehiculo_admin WHERE id_vehiculo_admin = ${id}`);
        res.json(vehiculo);
    }catch (e) {
        res.json({error: e})
    }
});

router.post('/',async(req, res) => {
    try{
        const {marca, tipo_vehiculo, placa} = req.body
        await pool.query(`
            insert into vehiculo_admin(marca, tipo_vehiculo, placa)
            values('${marca}', '${tipo_vehiculo}', '${placa}') 
        `);
        res.json({response: "Se creo el vehiculo"});
    }catch(e){
        res.json({error: e})
    }
});

router.put('/',async(req, res) => {
    try{
        const {marca, tipo_vehiculo, placa, id} = req.body
        await pool.query(`
            UPDATE vehiculo_admin SET marca = '${marca}', tipo_vehiculo = ${tipo_vehiculo}, placa = ${placa} WHERE id_vehiculo_admin = ${id}
        `);
        res.json({response: "Se actualizo el vehiculo"});
    }catch(e){
        res.json({error: e})
    }
});

router.delete('/:id', async(req, res) => {
    try{
        const { id } = req.params
        await pool.query(`DELETE FROM vehiclo_admin WHERE id_vehiculo_admin = ${id}`);
        res.json({response: "Se elimino el vehiculo"});
    }catch(e){
        res.json({error: e})
    }
});

module.exports = router