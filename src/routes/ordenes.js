var express = require('express');
var router = express.Router();
const controllers_ordenes = require ("../controllers/ordenes");

/* Routers Ordenes*/
router.get('/', controllers_ordenes.getAll)
router.get('/:id', controllers_ordenes.getAllId)
router.post('/', controllers_ordenes.create)
router.put('/', controllers_ordenes.edit)
router.delete('/:id', controllers_ordenes.delete)
/* End Routers Ordenes  */



module.exports = router;