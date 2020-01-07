var mongoose = require('mongoose');

var type_duplexSchema = new mongoose.Schema({
    nom: String
});

var Type_duplex = mongoose.model('Type_duplex', type_duplexSchema);

module.exports = Type_duplex;