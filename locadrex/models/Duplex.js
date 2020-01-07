var mongoose = require('mongoose');

var duplexSchema = new mongoose.Schema({
    id_utilisateur: {
        type: mongoose.Schema.Types.ObjectId,
        ref: 'Utilisateur'
    },
    id_ville: {
        type: mongoose.Schema.Types.ObjectId,
        ref: 'Ville'
    },
    id_quartier: {
        type: mongoose.Schema.Types.ObjectId,
        ref: 'Quartier'
    },
    nom: String,
    images: [],
    position_geographique: String,
    validite: Boolean,
    date_arret: Date
});

var Duplex = mongoose.model('Duplex', duplexSchema);

module.exports = Duplex;