const express= require('express');
const router= express.Router();
const pool= require('../database');

router.get('/',async(req, res) => {
    try {
        const parcial = await pool.query(`
        select vehiculo.placa, tipo_vehiculo.tipo_vehiculo, usuarios.usuarios, servicio.fecha, usuarios.id_usuarios from usuarios 
inner join vehiculo on vehiculo.id_usuarios = usuarios.id_usuarios 
inner join tipo_vehiculo on tipo_vehiculo.id_tipo_vehiculo = vehiculo.id_tipo_vehiculo
inner join servicio on servicio.placa = vehiculo.placa
        `);
        res.json(parcial);
    }catch (e) {
        res.json({error: e})
    }
});

router.post('/',async(req, res) => {
    try {
        const { id, comentario } = req.body
        const usuario = await pool.query(`insert into comentario (comentario, id_usuarios) values ('${comentario}', ${id})`);
        res.json(usuario);
    }catch (e) {
        res.json({error: e})
    }
});

module.exports = router