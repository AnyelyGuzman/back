const parcial_model = require('../model/parcial')

module.exports = {
    getAll: async (req, res) => {
        const {placa} = req.query
        const parcial = await parcial_model.getAll(placa)
        return res.json(parcial)
    },
}