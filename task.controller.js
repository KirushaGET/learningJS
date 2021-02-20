const Task = require('../../db/models/task/index');

module.exports.getAllTasks = (req,res) => {
    Task.find().exec().then(result => {
      res.send({data:result});
    });
  };
  
  module.exports.createNewTask = (req,res) => {
    const task = new Task(req.body);
    task.save().then(result => {
      res.send(result);
    }).catch(err => console.log(err));
  };
  
  
  module.exports.changeTaskInfo = (req,res) => {
   Task.updateOne({_id: req.body._id}, req.body).then(resul => {
     Task.find({_id: req.body._id}).then(result => {
       res.send(result);
    });
   });
  };
  
  module.exports.deleteTask = (req,res) => {
    Task.deleteOne({_id: req.query._id}).then(res.send("All Information was delete!"))
   };