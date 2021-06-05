var express = require('express');
var router = express.Router();
const controllers_parcial = require ("../controllers/parcial");

/* Routers parcial*/
router.get('/', controllers_parcial.getAll)
/* End Routers parcial  */



module.exports = router;  