var mongoose = require('mongoose');

var type_chambre_hotelSchema = new mongoose.Schema({
    nom: String
});

var Type_chambre_hotel = mongoose.model('Type_chambre_hotel', type_chambre_hotelSchema);

module.exports = Type_chambre_hotel;