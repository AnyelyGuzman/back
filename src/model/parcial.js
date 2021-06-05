const database = require('../database');

module.exports = {
    getAll: async (placa) => {
        try{

            return await database.query(`select * from carro 
            inner join servicio on servicio.id_carro = carro.id_carro
            inner join atencion on atencion.id_servicio = servicio.id_servicio
            where placa = "${placa}"; `)
        }catch(e){
            console.log('error modelo de parcial', e)
        }
    },
}