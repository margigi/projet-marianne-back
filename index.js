require('dotenv').config();

// La variable process est accessible partout (dans les fichiers js ou ejs)
const PORT = process.env.PORT || 3000;

const express = require('express');
const app=express();






// Middlware nécessaire pour la récupération des informations postées dans un formulaire. Grâce à lui on peut récupérer ces infos dans request.body
//app.use(express.urlencoded({ extended: true }));



//Mise en place du routage
//const router = require('./app/router');
//app.use(router);

app.listen(PORT, () => {
    console.log(`Listening on port ${PORT}. http://localhost:${PORT}`);
});

process.on('unhandledRejection', (err) => {
    console.error(err);
    process.exit(1);
});