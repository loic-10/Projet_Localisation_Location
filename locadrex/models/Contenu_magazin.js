var mongoose = require('mongoose');

var contenu_magazinSchema = new mongoose.Schema({
    id_utilisateur: {
        type: mongoose.Schema.Types.ObjectId,
        ref: 'Utilisateur'
    },
    id_magazin: {
        type: mongoose.Schema.Types.ObjectId,
        ref: 'Magazin'
    },
    id_ville: {
        type: mongoose.Schema.Types.ObjectId,
        ref: 'Ville'
    },
    id_quartier: {
        type: mongoose.Schema.Types.ObjectId,
        ref: 'Quartier'
    },
    image: String,
    prix_par_mois: Number,
    superficie: Number,
    description: String
});

var Contenu_magazin = mongoose.model('Contenu_magazin', contenu_magazinSchema);

module.exports = Contenu_magazin;