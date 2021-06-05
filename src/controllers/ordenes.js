const ordenes_model = require('../model/ordenes')

module.exports = {
    getAll: async (req, res) => {
        const ordenes = await ordenes_model.getAll()
        return res.json(ordenes)
    },
    getAllId: async (req, res) => {
        const id = req.params.id
        const ordenes = await ordenes_model.getAllId(id)
        return res.json(ordenes)
    },

    create: async (req, res) => {
        const { producto, cantidad } = req.body
        const orden = await ordenes_model.create({producto, cantidad})
        return res.json(orden)
    },

    edit: async (req, res) => {
        const { producto, cantidad, id } = req.body
        const ordenesupd = await ordenes_model.update({producto, cantidad, id})
        console.log("sas", ordenesupd)
        return res.json(ordenesupd)
    },

    delete: async (req,res) => {
        const {id}= req.params;
        const ordenes = await ordenes_model.delete(id)
        return res.json(ordenes)
    }
}