var mongoose = require('mongoose');

var villeSchema = new mongoose.Schema({
    nom: String,
    image: String
});

var Ville = mongoose.model('Ville', villeSchema);

module.exports = Ville;