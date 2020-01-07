var express = require('express');
var mongoose = require('mongoose');
var nunjucks = require('nunjucks');
var bodyParser = require('body-parser');
var multer = require('multer');

var upload = multer({dest: __dirname + '/uploads'});

mongoose.connect('mongodb://localhost/locadrex',{
    useNewUrlParser: true,
    useUnifiedTopology: true
})
.then(() => console.log('Connexion à MongoDB réussie !'))
.catch(() => console.log('Connexion à MongoDB échouée !'));

require('./models/Pokemon');
require('./models/Type');
require('./models/Appartement');
require('./models/Chambre');
require('./models/Contenu_appartement');
require('./models/Contenu_chambre');
require('./models/Contenu_duplex');
require('./models/Contenu_hotel');
require('./models/Contenu_magazin');
require('./models/Contenu_salle_banquet');
require('./models/Duplex');
require('./models/Hotel');
require('./models/Magazin');
require('./models/Quartier');
require('./models/Salle_banquet');
require('./models/Type_appartement');
require('./models/Type_chambre_hotel');
require('./models/Type_chambre');
require('./models/Type_duplex');
require('./models/Type_evenement');
require('./models/Utilisateur');
require('./models/Ville');

var app = express();

app.use(bodyParser.urlencoded());
app.use(upload.single('file'));

app.use('/css', express.static(__dirname + '/node_modules/bootstrap/dist/css'))

app.use('/', require('./routes/pokemons'));
app.use('/types', require('./routes/types'));

app.use('/uploads', express.static(__dirname + '/uploads'));

nunjucks.configure('views', {
    autoescape: true,
    express : app
});


console.log('locadrex lance sur le port 27017');
app.listen(27017);