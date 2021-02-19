const express = require('express');
const mongoose = require("mongoose");
const app = express();
const Schema = mongoose.Schema;
const bodyParser = require('body-parser');
const TaskSchem = new Schema({
  "text": String,
  "isCheck": Boolean
});
app.use(bodyParser.json());
const Task = mongoose.model("Task", TaskSchem);


const uri = "mongodb+srv://kgarnov:kgarnov@todoclaster.gad3l.mongodb.net/ToDo?retryWrites=true&w=majority";
mongoose.connect(uri, {useNewUrlParser: true, useUnifiedTopology: true});

  app.get('/alltasks', (req,res) => {
  Task.find().exec().then(result => {
    res.send({data:result});
  });
});

app.post('/createTask', (req,res) => {
  const task = new Task(req.body);
  task.save().then(result => {
    res.send(result);
  }).catch(err => console.log(err));
});


app.patch('/updateTask', (req,res) => {
 Task.updateOne({_id: req.body._id}, req.body).then(resul => {
   Task.find({_id: req.body._id}).then(result => {
     res.send(result);
  });
 });
});

app.delete('/deleteTask', (req,res) => {
  Task.deleteOne({_id: req.query._id}).then(res.send("All Information was delete!"))
 });

app.listen(8000, () => {
  console.log('Example app listening on port 8000!')
});
//drgtdfgdhdg