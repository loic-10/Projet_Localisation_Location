var mongoose = require('mongoose');

var contenu_appartementSchema = new mongoose.Schema({
    id_utilisateur: {
        type: mongoose.Schema.Types.ObjectId,
        ref: 'Utilisateur'
    },
    id_appartement: {
        type: mongoose.Schema.Types.ObjectId,
        ref: 'Appartement'
    },
    id_ville: {
        type: mongoose.Schema.Types.ObjectId,
        ref: 'Ville'
    },
    id_quartier: {
        type: mongoose.Schema.Types.ObjectId,
        ref: 'Quartier'
    },
    type_appartement: {
        type: mongoose.Schema.Types.ObjectId,
        ref: 'Type_appartement'
    },
    image: String,
    prix_par_mois: Number,
    nombre_mois_minimum: Number,
    nombre_chambre: Number,
    description: String
});

var Contenu_appartement = mongoose.model('Contenu_appartement', contenu_appartementSchema);

module.exports = Contenu_appartement;