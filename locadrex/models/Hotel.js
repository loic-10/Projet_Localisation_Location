var mongoose = require('mongoose');

var hotelSchema = new mongoose.Schema({
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
    nombre_etoile: Number,
    position_geographique: String,
    validite: Boolean,
    date_arret: Date
});

var Hotel = mongoose.model('Hotel', hotelSchema);

module.exports = Hotel;