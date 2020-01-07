var mongoose = require('mongoose');

var quartierSchema = new mongoose.Schema({
    nom: String,
    image: String,
    id_ville: {
        type: mongoose.Schema.Types.ObjectId,
        ref: 'Ville'
    }
});

var Quartier = mongoose.model('Quartier', quartierSchema);

module.exports = Quartier;