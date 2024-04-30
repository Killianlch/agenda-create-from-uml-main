const express = require('express');
const app = express();
app.get('/', (req, res) => {
    res.send('Hello, world !');
});
const PORT = process.env.PORT || 3000;
app.listen(PORT, () => {
    console.log(`Server is running on port ${PORT}`);
});
const mongoose = require('mongoose');
mongoose.connect('mongodb://localhost:27017/agendaDB', {
    useNewUrlParser: true,
    useUnifiedTopology: true
});
