var mongoose = require('mongoose');

var type_evenementSchema = new mongoose.Schema({
    nom: String
});

var Type_evenement = mongoose.model('Type_evenement', type_evenementSchema);

module.exports = Type_evenement;