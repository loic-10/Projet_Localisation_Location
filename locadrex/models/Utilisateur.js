var mongoose = require('mongoose');

var utilisateurSchema = new mongoose.Schema({
    nom_complet: String,
    date_naissance: Date,
    numero_telephone: String,
    adresse_email: String,
    sexe: String,
    ville: String,
    photo_profil: String,
    mot_de_passe: String
});

var Utilisateur = mongoose.model('Utilisateur', utilisateurSchema);

module.exports = Utilisateur;