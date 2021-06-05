const express= require('express');
const router= express.Router();
const pool= require('../database');

router.get('/',async(req, res) => {
    try {
        const envios = await pool.query('select * from envios');
        res.json(envios);
    }catch (e) {
        res.json({error: e})
    }
});

router.get('/:id',async(req, res) => {
    try {
        const { id } = req.params
        const envios = await pool.query(`SELECT * FROM envios WHERE id_envios = ${id}`);
        res.json(envios);
    }catch (e) {
        res.json({error: e})
    }
});

router.post('/',async(req, res) => {
    try{
        const {cll, cra, esquina, numero_casa, telefono, barrio} = req.body
        await pool.query(`
            insert into envios(cll, cra, esquina, numero_casa, telefono, barrio)
            values(${cll}, ${cra}, ${esquina}, ${numero_casa}, '${telefono}', '${barrio}') 
        `);
        res.json({response: "Se creo el envio"});
    }catch(e){
        res.json({error: e})
    }
});

router.put('/',async(req, res) => {
    try{
        const {cll, cra, esquina, numero_casa, telefono, barrio, id} = req.body
        await pool.query(`
            UPDATE envios SET cll = ${cll}, cra = ${cra}, esquina = ${esquina}, numero_casa = ${numero_casa}, telefono = '${telefono}', barrio = '${barrio}' WHERE id_envios = ${id}
        `);
        res.json({response: "Se actualizo el envio"});
    }catch(e){
        res.json({error: e})
    }
});

router.delete('/:id', async(req, res) => {
    try{
        const { id } = req.params
        await pool.query(`DELETE FROM envios WHERE id_envios = ${id}`);
        res.json({response: "Se elimino el usuario"});
    }catch(e){
        res.json({error: e})
    }
});

module.exports = router