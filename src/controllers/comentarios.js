const comentarios_model = require('../model/comentarios')

module.exports = {
    getAll: async (req, res) => {
        const comentarios = await comentarios_model.getAll()
        return res.json(comentarios)
    },
    getAllId: async (req, res) => {
        const id = req.params.id 
        const comentarios = await comentarios_model.getAllId(id)
        return res.json(comentarios)
    },


    create: async (req, res) => {  
        const { comentario } = req.body
        const comentarios = await comentarios_model.create({comentario})
        console.log("sas", comentarios)
        return res.json(comentarios)
    },

    edit: async (req, res) => {
        const { comentarios, id } = req.body
        const comentarioupd = await comentarios_model.update({comentarios, id})
        console.log("sas", comentarioupd)
        return res.json(comentarioupd)
    },

    delete: async (req,res) => {
        const {id}= req.params;
        const comentarios = await comentarios_model.delete(id)
        return res.json(comentarios)
    }
}