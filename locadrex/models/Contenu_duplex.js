var mongoose = require('mongoose');

var contenu_duplexSchema = new mongoose.Schema({
    id_utilisateur: {
        type: mongoose.Schema.Types.ObjectId,
        ref: 'Utilisateur'
    },
    id_duplex: {
        type: mongoose.Schema.Types.ObjectId,
        ref: 'Duplex'
    },
    id_ville: {
        type: mongoose.Schema.Types.ObjectId,
        ref: 'Ville'
    },
    id_quartier: {
        type: mongoose.Schema.Types.ObjectId,
        ref: 'Quartier'
    },
    type_duplex: {
        type: mongoose.Schema.Types.ObjectId,
        ref: 'Type_duplex'
    },
    image: String,
    prix_par_mois: Number,
    nombre_mois_minimum: Number,
    nombre_chambre: Number,
    description: String
});

var Contenu_duplex = mongoose.model('Contenu_duplex', contenu_duplexSchema);

module.exports = Contenu_duplex;