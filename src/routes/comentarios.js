var express = require('express');
var router = express.Router();
const controllers_comentarios = require ("../controllers/comentarios");

/* Routers Comentarios*/
router.get('/', controllers_comentarios.getAll)
router.get('/:id', controllers_comentarios.getAllId)
router.post('/', controllers_comentarios.create)
router.put('/', controllers_comentarios.edit)
router.delete('/:id', controllers_comentarios.delete)
/* End Routers Comentarios  */



module.exports = router;  