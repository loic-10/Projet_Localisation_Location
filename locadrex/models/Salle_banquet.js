var mongoose = require('mongoose');

var salle_banquetSchema = new mongoose.Schema({
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

var Salle_banquet = mongoose.model('Salle_banquet', salle_banquetSchema);

module.exports = Salle_banquet;