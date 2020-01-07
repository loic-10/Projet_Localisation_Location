var mongoose = require('mongoose');

var type_appartementSchema = new mongoose.Schema({
    nom: String
});

var Type_appartement = mongoose.model('Type_appartement', type_appartementSchema);

module.exports = Type_appartement;