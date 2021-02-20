const mongoose = require("mongoose");

const { Schema } = mongoose;

const taskScheme = new Schema({
    "text": String,
  });

module.exports = Task = mongoose.model('tasks', taskScheme);