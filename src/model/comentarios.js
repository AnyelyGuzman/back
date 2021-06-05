const database = require('../database');
const comentarios = require('../controllers/comentarios');

module.exports = {
    getAll: async () => {
        try{
            return await database.query(`select * from comentarios`)
        }catch(e){
            console.log('error modelo de comentarios', e)
        }
    },
    getAllId: async (id) => {
        try{
            return await database.query(`select * from comentarios where id_comentarios=${id}`)
        }catch(e){
            console.log('error modelo de comentarios', e)
        }
    },
    create: async comentarios => {
        try{
            await database.query(`insert into comentarios (comentario) values ('${comentarios.comentario}')`)
            return { response: "se creo el comentario" }
        }catch(e){
            console.log('error modelo de comentarios', e)
        }
    },

    update: async comentarios => {
        try{  
            await database.query(`update comentarios set comentario = '${comentarios.comentarios}' where id_comentarios=${comentarios.id}`);
            return { response: "se actualizo el comentario" }
        }catch(e){
            console.log('error modelo de comentarios', e)
        }
    },

    delete: async id => {
        try{
            await database.query('delete from comentarios where id_comentarios=?', [id]);
            return { response: "se elimino el comentario" }
        }catch(e){
            console.log('error modelo de comentarios', e)
        }
    }
}