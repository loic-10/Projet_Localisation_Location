var mongoose = require('mongoose');

var contenu_chambreSchema = new mongoose.Schema({
    id_utilisateur: {
        type: mongoose.Schema.Types.ObjectId,
        ref: 'Utilisateur'
    },
    id_chambre: {
        type: mongoose.Schema.Types.ObjectId,
        ref: 'Chambre'
    },
    id_ville: {
        type: mongoose.Schema.Types.ObjectId,
        ref: 'Ville'
    },
    id_quartier: {
        type: mongoose.Schema.Types.ObjectId,
        ref: 'Quartier'
    },
    type_chambre: {
        type: mongoose.Schema.Types.ObjectId,
        ref: 'Type_chambre'
    },
    image: String,
    prix_par_mois: Number,
    nombre_mois_minimum: Number,
    statut_cuisine: Boolean,
    statut_douche: Boolean,
    description: String
});

var Contenu_chambre = mongoose.model('Contenu_chambre', contenu_chambreSchema);

module.exports = Contenu_chambre;