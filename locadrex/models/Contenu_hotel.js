var mongoose = require('mongoose');

var contenu_hotelSchema = new mongoose.Schema({
    id_utilisateur: {
        type: mongoose.Schema.Types.ObjectId,
        ref: 'Utilisateur'
    },
    id_hotel: {
        type: mongoose.Schema.Types.ObjectId,
        ref: 'Hotel'
    },
    id_ville: {
        type: mongoose.Schema.Types.ObjectId,
        ref: 'Ville'
    },
    id_quartier: {
        type: mongoose.Schema.Types.ObjectId,
        ref: 'Quartier'
    },
    type_chambre_hotel: {
        type: mongoose.Schema.Types.ObjectId,
        ref: 'Type_chambre_hotel'
    },
    image: String,
    prix_par_nuitee: Number,
    statut_dejeune: Boolean,
    description: String
});

var Contenu_hotel = mongoose.model('Contenu_hotel', contenu_hotelSchema);

module.exports = Contenu_hotel;