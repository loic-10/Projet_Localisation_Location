var mongoose = require('mongoose');

var contenu_salle_banquetSchema = new mongoose.Schema({
    id_utilisateur: {
        type: mongoose.Schema.Types.ObjectId,
        ref: 'Utilisateur'
    },
    id_salle_banquet: {
        type: mongoose.Schema.Types.ObjectId,
        ref: 'Salle_banquet'
    },
    id_ville: {
        type: mongoose.Schema.Types.ObjectId,
        ref: 'Ville'
    },
    id_quartier: {
        type: mongoose.Schema.Types.ObjectId,
        ref: 'Quartier'
    },
    type_evenement: {
        type: mongoose.Schema.Types.ObjectId,
        ref: 'Type_evenement'
    },
    image: String,
    prix_par_jour: Number,
    capacite: Number,
    description: String
});

var Contenu_salle_banquet = mongoose.model('Contenu_salle_banquet', contenu_salle_banquetSchema);

module.exports = Contenu_salle_banquet;