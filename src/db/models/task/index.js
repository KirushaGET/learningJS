const mongoose = require("mongoose");

const { Schema } = mongoose;

const taskScheme = new Schema({
    "text": String,
    "how": Number
  });

module.exports = Task = mongoose.model('tasks', taskScheme);