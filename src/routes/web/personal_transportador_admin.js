const express= require('express');
const router= express.Router();
const pool= require('../../database');

router.get('/',async(req, res) => {
    try {
        const personal = await pool.query('select * from personal_transportador_admin');
        res.json(personal);
    }catch (e) {
        res.json({error: e})
    }
});

router.get('/:id',async(req, res) => {
    try {
        const { id } = req.params
        const personal = await pool.query(`SELECT * FROM personal_transportador_admin WHERE id_personal_transportador_admin = ${id}`);
        res.json(personal);
    }catch (e) {
        res.json({error: e})
    }
});

router.post('/',async(req, res) => {
    try{
        const {nombre, apellido, telefono, direccion} = req.body
        await pool.query(`
            insert into personal_transportador_admin(nombre, apellido, telefono, direccion)
            values('${nombre}', '${apellido}', '${telefono}', '${direccion}') 
        `);
        res.json({response: "Se creo nueva persona de transportes"});
    }catch(e){
        res.json({error: e})
    }
});

router.put('/',async(req, res) => {
    try{
        const {nombre, apellido, telefono, direccion, id_personal_transportador_admin} = req.body
        await pool.query(`
            UPDATE personal_transportador_admin SET nombre = '${nombre}', apellido = '${apellido}', telefono = '${telefono}', direccion = '${direccion}' WHERE id_personal_transportador_admin = ${id_personal_transportador_admin}
        `);
        res.json({response: "Se actualizo el personal"});
    }catch(e){
        res.json({error: e})
    }
});

router.delete('/:id', async(req, res) => {
    try{
        const { id } = req.params
        await pool.query(`DELETE FROM personal_transportador_admin WHERE id_personal_transportador_admin = ${id}`);
        res.json({response: "Se elimino el personal"});
    }catch(e){
        res.json({error: e})
    }
});

module.exports = router