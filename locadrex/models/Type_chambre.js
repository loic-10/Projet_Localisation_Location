var mongoose = require('mongoose');

var type_chambreSchema = new mongoose.Schema({
    nom: String
});

var Type_chambre = mongoose.model('Type_chambre', type_chambreSchema);

module.exports = Type_chambre;