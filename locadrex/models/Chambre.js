var mongoose = require('mongoose');

var chambreSchema = new mongoose.Schema({
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

var Chambre = mongoose.model('Chambre', chambreSchema);

module.exports = Chambre;