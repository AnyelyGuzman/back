const database = require('../database');
const ordenes = require('../controllers/ordenes');

module.exports = {
    getAll: async () => {
        try{
            return await database.query(`select * from ordenes`)
        }catch(e){
            console.log('error modelo de ordenes', e)
        }
    },
    getAllId: async (id) => {
        try{
            return await database.query(`select * from ordenes where id_ordenes=${id}`)
        }catch(e){
            console.log('error modelo de ordenes', e)
        }
    },
    create: async ordenes => {
        try{
            await database.query(`insert into ordenes (producto, cantidad) values ('${ordenes.producto}', ${ordenes.cantidad} )`)
            return { response: "se creo la orden" }
        }catch(e){
            console.log('error modelo de ordenes', e)
        }
    },

    update: async ordenes => {
        try{
            await database.query(`update ordenes set producto = '${ordenes.producto}', cantidad = ${ordenes.cantidad} where id_ordenes=${ordenes.id}`);
            return { response: "se actualizo la orden" }
        }catch(e){
            console.log('error modelo de ordenes', e)
        }
    },

    delete: async id => {
        try{
            await database.query('delete from ordenes where id_ordenes=?', [id]);
            return { response: "se elimino la orden" }
        }catch(e){
            console.log('error modelo de ordenes', e)
        }
    }
}