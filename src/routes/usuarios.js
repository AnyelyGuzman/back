const express= require('express');
const router= express.Router();
const pool= require('../database');

router.get('/',async(req, res) => {
    try {
        const usuarios = await pool.query('select * from usuarios');
        res.json(usuarios);
    }catch (e) {
        res.json({error: e})
    }
});

router.get('/:id',async(req, res) => {
    try {
        const { id } = req.params
        const usuario = await pool.query(`SELECT * FROM usuarios WHERE id_usuarios = ${id}`);
        res.json(usuario);
    }catch (e) {
        res.json({error: e})
    }
});

router.post('/',async(req, res) => {
    try{
        const {accessToken, idToken, refreshToken, email, photoUrl} = req.body
        await pool.query(`
            insert into usuarios(accessToken, idToken, refreshToken, email, photoUrl)
            values('${accessToken}', '${idToken}', '${refreshToken}', '${email}', '${photoUrl}') 
        `);
        res.json({response: "Se creo el usuario"});
    }catch(e){
        res.json({error: e})
    }
});

router.put('/',async(req, res) => {
    try{
        const {accessToken, idToken, refreshToken, email, photoUrl, id} = req.body
        await pool.query(`
            UPDATE usuarios SET accessToken = '${accessToken}', idToken = '${idToken}', refreshToken = '${refreshToken}', email = '${email}', photoUrl = '${photoUrl}' WHERE id_usuarios = ${id}
        `);
        res.json({response: "Se actualizo el usuario"});
    }catch(e){
        res.json({error: e})
    }
});

router.delete('/:id', async(req, res) => {
    try{
        const { id } = req.params
        await pool.query(`DELETE FROM usuarios WHERE id_usuarios = ${id}`);
        res.json({response: "Se elimino el usuario"});
    }catch(e){
        res.json({error: e})
    }
});

module.exports = router