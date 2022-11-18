// Requisitos principales 
// ======================================================
const express = require('express');
const app = express();

// Importación de prisma
const { PrismaClient } = require('@prisma/client');
const prisma = new PrismaClient()
// ======================================================

// Puerto
// ======================================================
app.set('Port', process.env.PORT || 1234);

app.listen(app.get('Port'), () =>{
    console.log("Se está escuchando el puerto: ", app.get('Port'));
})
// ======================================================

// Middlewares
// ======================================================
app.use(express.json());
app.use(express.urlencoded({extended: false}));
// ======================================================

// Peticiones
// ======================================================
app.post("/departamento", async(req, res) => {
    const departamento = await prisma.departamento.create({
        data: req.body,
    });
    res.json({departamento})
})
// ======================================================