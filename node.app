Script started on 2021-02-24 09:21:01+03:00 [TERM="xterm-256color" TTY="/dev/pts/0" COLUMNS="85" LINES="13"]
]0;user@user-desktop: ~/Документы/project VS/Project Module 3[01;32muser@user-desktop[00m:[01;34m~/Документы/project VS/Project Module 3[00m$ node app.js
Example app listening on port 8000!
(node:7212) DeprecationWarning: Listening to events on the Db class has been deprecated and will be removed in the next major version.
^C
]0;user@user-desktop: ~/Документы/project VS/Project Module 3[01;32muser@user-desktop[00m:[01;34m~/Документы/project VS/Project Module 3[00m$ node app.js
Example app listening on port 8000!
(node:8355) DeprecationWarning: Listening to events on the Db class has been deprecated and will be removed in the next major version.
^C
]0;user@user-desktop: ~/Документы/project VS/Project Module 3[01;32muser@user-desktop[00m:[01;34m~/Документы/project VS/Project Module 3[00m$ node app.js
Example app listening on port 8000!
(node:10662) DeprecationWarning: Listening to events on the Db class has been deprecated and will be removed in the next major version.
^C
]0;user@user-desktop: ~/Документы/project VS/Project Module 3[01;32muser@user-desktop[00m:[01;34m~/Документы/project VS/Project Module 3[00m$ node app.js
Example app listening on port 8000!
(node:11276) DeprecationWarning: Listening to events on the Db class has been deprecated and will be removed in the next major version.
{ Error: tasks validation failed: _id: Cast to ObjectId failed for value "0" at path "_id"
    at ValidationError.inspect (/home/user/Документы/project VS/Project Module 3/node_modules/mongoose/lib/error/validation.js:47:26)
    at formatValue (internal/util/inspect.js:491:31)
    at inspect (internal/util/inspect.js:189:10)
    at Object.formatWithOptions (util.js:84:12)
    at Console.(anonymous function) (console.js:191:15)
    at Console.log (console.js:202:31)
    at task.save.then.catch.err (/home/user/Документы/project VS/Project Module 3/src/modules/controllers/task.controller.js:13:29)
    at process._tickCallback (internal/process/next_tick.js:68:7)
  errors:
   { _id:
      { CastError: Cast to ObjectId failed for value "0" at path "_id"
          at ObjectId.cast (/home/user/Документы/project VS/Project Module 3/node_modules/mongoose/lib/schema/objectid.js:281:11)
          at ObjectId.SchemaType.applySetters (/home/user/Документы/project VS/Project Module 3/node_modules/mongoose/lib/schematype.js:1091:12)
          at model.$set (/home/user/Документы/project VS/Project Module 3/node_modules/mongoose/lib/document.js:1269:20)
          at model.$set (/home/user/Документы/project VS/Project Module 3/node_modules/mongoose/lib/document.js:1013:16)
          at model.Document (/home/user/Документы/project VS/Project Module 3/node_modules/mongoose/lib/document.js:148:12)
          at model.Model (/home/user/Документы/project VS/Project Module 3/node_modules/mongoose/lib/model.js:105:12)
          at new model (/home/user/Документы/project VS/Project Module 3/node_modules/mongoose/lib/model.js:4709:15)
          at module.exports.createNewTask (/home/user/Документы/project VS/Project Module 3/src/modules/controllers/task.controller.js:10:18)
          at Layer.handle [as handle_request] (/home/user/Документы/project VS/Project Module 3/node_modules/express/lib/router/layer.js:95:5)
          at next (/home/user/Документы/project VS/Project Module 3/node_modules/express/lib/router/route.js:137:13)
          at Route.dispatch (/home/user/Документы/project VS/Project Module 3/node_modules/express/lib/router/route.js:112:3)
          at Layer.handle [as handle_request] (/home/user/Документы/project VS/Project Module 3/node_modules/express/lib/router/layer.js:95:5)
          at /home/user/Документы/project VS/Project Module 3/node_modules/express/lib/router/index.js:281:22
          at Function.process_params (/home/user/Документы/project VS/Project Module 3/node_modules/express/lib/router/index.js:335:12)
          at next (/home/user/Документы/project VS/Project Module 3/node_modules/express/lib/router/index.js:275:10)
          at Function.handle (/home/user/Документы/project VS/Project Module 3/node_modules/express/lib/router/index.js:174:3)
        stringValue: [32m'"0"'[39m,
        messageFormat: [90mundefined[39m,
        kind: [32m'ObjectId'[39m,
        value: [33m0[39m,
        path: [32m'_id'[39m,
        reason:
         Error: Argument passed in must be a single String of 12 bytes or a string of 24 hex characters
             at new ObjectID (/home/user/Документы/project VS/Project Module 3/node_modules/bson/lib/bson/objectid.js:59:11)
             at castObjectId (/home/user/Документы/project VS/Project Module 3/node_modules/mongoose/lib/cast/objectid.js:25:12)
             at ObjectId.cast (/home/user/Документы/project VS/Project Module 3/node_modules/mongoose/lib/schema/objectid.js:279:12)
             at ObjectId.SchemaType.applySetters (/home/user/Документы/project VS/Project Module 3/node_modules/mongoose/lib/schematype.js:1091:12)
             at model.$set (/home/user/Документы/project VS/Project Module 3/node_modules/mongoose/lib/document.js:1269:20)
             at model.$set (/home/user/Документы/project VS/Project Module 3/node_modules/mongoose/lib/document.js:1013:16)
             at model.Document (/home/user/Документы/project VS/Project Module 3/node_modules/mongoose/lib/document.js:148:12)
             at model.Model (/home/user/Документы/project VS/Project Module 3/node_modules/mongoose/lib/model.js:105:12)
             at new model (/home/user/Документы/project VS/Project Module 3/node_modules/mongoose/lib/model.js:4709:15)
             at module.exports.createNewTask (/home/user/Документы/project VS/Project Module 3/src/modules/controllers/task.controller.js:10:18)
             at Layer.handle [as handle_request] (/home/user/Документы/project VS/Project Module 3/node_modules/express/lib/router/layer.js:95:5)
             at next (/home/user/Документы/project VS/Project Module 3/node_modules/express/lib/router/route.js:137:13)
             at Route.dispatch (/home/user/Документы/project VS/Project Module 3/node_modules/express/lib/router/route.js:112:3)
             at Layer.handle [as handle_request] (/home/user/Документы/project VS/Project Module 3/node_modules/express/lib/router/layer.js:95:5)
             at /home/user/Документы/project VS/Project Module 3/node_modules/express/lib/router/index.js:281:22
             at Function.process_params (/home/user/Документы/project VS/Project Module 3/node_modules/express/lib/router/index.js:335:12) } },
  _message: [32m'tasks validation failed'[39m }
{ Error: tasks validation failed: _id: Cast to ObjectId failed for value "0" at path "_id"
    at ValidationError.inspect (/home/user/Документы/project VS/Project Module 3/node_modules/mongoose/lib/error/validation.js:47:26)
    at formatValue (internal/util/inspect.js:491:31)
    at inspect (internal/util/inspect.js:189:10)
    at Object.formatWithOptions (util.js:84:12)
    at Console.(anonymous function) (console.js:191:15)
    at Console.log (console.js:202:31)
    at task.save.then.catch.err (/home/user/Документы/project VS/Project Module 3/src/modules/controllers/task.controller.js:13:29)
    at process._tickCallback (internal/process/next_tick.js:68:7)
  errors:
   { _id:
      { CastError: Cast to ObjectId failed for value "0" at path "_id"
          at ObjectId.cast (/home/user/Документы/project VS/Project Module 3/node_modules/mongoose/lib/schema/objectid.js:281:11)
          at ObjectId.SchemaType.applySetters (/home/user/Документы/project VS/Project Module 3/node_modules/mongoose/lib/schematype.js:1091:12)
          at model.$set (/home/user/Документы/project VS/Project Module 3/node_modules/mongoose/lib/document.js:1269:20)
          at model.$set (/home/user/Документы/project VS/Project Module 3/node_modules/mongoose/lib/document.js:1013:16)
          at model.Document (/home/user/Документы/project VS/Project Module 3/node_modules/mongoose/lib/document.js:148:12)
          at model.Model (/home/user/Документы/project VS/Project Module 3/node_modules/mongoose/lib/model.js:105:12)
          at new model (/home/user/Документы/project VS/Project Module 3/node_modules/mongoose/lib/model.js:4709:15)
          at module.exports.createNewTask (/home/user/Документы/project VS/Project Module 3/src/modules/controllers/task.controller.js:10:18)
          at Layer.handle [as handle_request] (/home/user/Документы/project VS/Project Module 3/node_modules/express/lib/router/layer.js:95:5)
          at next (/home/user/Документы/project VS/Project Module 3/node_modules/express/lib/router/route.js:137:13)
          at Route.dispatch (/home/user/Документы/project VS/Project Module 3/node_modules/express/lib/router/route.js:112:3)
          at Layer.handle [as handle_request] (/home/user/Документы/project VS/Project Module 3/node_modules/express/lib/router/layer.js:95:5)
          at /home/user/Документы/project VS/Project Module 3/node_modules/express/lib/router/index.js:281:22
          at Function.process_params (/home/user/Документы/project VS/Project Module 3/node_modules/express/lib/router/index.js:335:12)
          at next (/home/user/Документы/project VS/Project Module 3/node_modules/express/lib/router/index.js:275:10)
          at Function.handle (/home/user/Документы/project VS/Project Module 3/node_modules/express/lib/router/index.js:174:3)
        stringValue: [32m'"0"'[39m,
        messageFormat: [90mundefined[39m,
        kind: [32m'ObjectId'[39m,
        value: [33m0[39m,
        path: [32m'_id'[39m,
        reason:
         Error: Argument passed in must be a single String of 12 bytes or a string of 24 hex characters
             at new ObjectID (/home/user/Документы/project VS/Project Module 3/node_modules/bson/lib/bson/objectid.js:59:11)
             at castObjectId (/home/user/Документы/project VS/Project Module 3/node_modules/mongoose/lib/cast/objectid.js:25:12)
             at ObjectId.cast (/home/user/Документы/project VS/Project Module 3/node_modules/mongoose/lib/schema/objectid.js:279:12)
             at ObjectId.SchemaType.applySetters (/home/user/Документы/project VS/Project Module 3/node_modules/mongoose/lib/schematype.js:1091:12)
             at model.$set (/home/user/Документы/project VS/Project Module 3/node_modules/mongoose/lib/document.js:1269:20)
             at model.$set (/home/user/Документы/project VS/Project Module 3/node_modules/mongoose/lib/document.js:1013:16)
             at model.Document (/home/user/Документы/project VS/Project Module 3/node_modules/mongoose/lib/document.js:148:12)
             at model.Model (/home/user/Документы/project VS/Project Module 3/node_modules/mongoose/lib/model.js:105:12)
             at new model (/home/user/Документы/project VS/Project Module 3/node_modules/mongoose/lib/model.js:4709:15)
             at module.exports.createNewTask (/home/user/Документы/project VS/Project Module 3/src/modules/controllers/task.controller.js:10:18)
             at Layer.handle [as handle_request] (/home/user/Документы/project VS/Project Module 3/node_modules/express/lib/router/layer.js:95:5)
             at next (/home/user/Документы/project VS/Project Module 3/node_modules/express/lib/router/route.js:137:13)
             at Route.dispatch (/home/user/Документы/project VS/Project Module 3/node_modules/express/lib/router/route.js:112:3)
             at Layer.handle [as handle_request] (/home/user/Документы/project VS/Project Module 3/node_modules/express/lib/router/layer.js:95:5)
             at /home/user/Документы/project VS/Project Module 3/node_modules/express/lib/router/index.js:281:22
             at Function.process_params (/home/user/Документы/project VS/Project Module 3/node_modules/express/lib/router/index.js:335:12) } },
  _message: [32m'tasks validation failed'[39m }
{ Error: tasks validation failed: _id: Cast to ObjectId failed for value "0" at path "_id"
    at ValidationError.inspect (/home/user/Документы/project VS/Project Module 3/node_modules/mongoose/lib/error/validation.js:47:26)
    at formatValue (internal/util/inspect.js:491:31)
    at inspect (internal/util/inspect.js:189:10)
    at Object.formatWithOptions (util.js:84:12)
    at Console.(anonymous function) (console.js:191:15)
    at Console.log (console.js:202:31)
    at task.save.then.catch.err (/home/user/Документы/project VS/Project Module 3/src/modules/controllers/task.controller.js:13:29)
    at process._tickCallback (internal/process/next_tick.js:68:7)
  errors:
   { _id:
      { CastError: Cast to ObjectId failed for value "0" at path "_id"
          at ObjectId.cast (/home/user/Документы/project VS/Project Module 3/node_modules/mongoose/lib/schema/objectid.js:281:11)
          at ObjectId.SchemaType.applySetters (/home/user/Документы/project VS/Project Module 3/node_modules/mongoose/lib/schematype.js:1091:12)
          at model.$set (/home/user/Документы/project VS/Project Module 3/node_modules/mongoose/lib/document.js:1269:20)
          at model.$set (/home/user/Документы/project VS/Project Module 3/node_modules/mongoose/lib/document.js:1013:16)
          at model.Document (/home/user/Документы/project VS/Project Module 3/node_modules/mongoose/lib/document.js:148:12)
          at model.Model (/home/user/Документы/project VS/Project Module 3/node_modules/mongoose/lib/model.js:105:12)
          at new model (/home/user/Документы/project VS/Project Module 3/node_modules/mongoose/lib/model.js:4709:15)
          at module.exports.createNewTask (/home/user/Документы/project VS/Project Module 3/src/modules/controllers/task.controller.js:10:18)
          at Layer.handle [as handle_request] (/home/user/Документы/project VS/Project Module 3/node_modules/express/lib/router/layer.js:95:5)
          at next (/home/user/Документы/project VS/Project Module 3/node_modules/express/lib/router/route.js:137:13)
          at Route.dispatch (/home/user/Документы/project VS/Project Module 3/node_modules/express/lib/router/route.js:112:3)
          at Layer.handle [as handle_request] (/home/user/Документы/project VS/Project Module 3/node_modules/express/lib/router/layer.js:95:5)
          at /home/user/Документы/project VS/Project Module 3/node_modules/express/lib/router/index.js:281:22
          at Function.process_params (/home/user/Документы/project VS/Project Module 3/node_modules/express/lib/router/index.js:335:12)
          at next (/home/user/Документы/project VS/Project Module 3/node_modules/express/lib/router/index.js:275:10)
          at Function.handle (/home/user/Документы/project VS/Project Module 3/node_modules/express/lib/router/index.js:174:3)
        stringValue: [32m'"0"'[39m,
        messageFormat: [90mundefined[39m,
        kind: [32m'ObjectId'[39m,
        value: [33m0[39m,
        path: [32m'_id'[39m,
        reason:
         Error: Argument passed in must be a single String of 12 bytes or a string of 24 hex characters
             at new ObjectID (/home/user/Документы/project VS/Project Module 3/node_modules/bson/lib/bson/objectid.js:59:11)
             at castObjectId (/home/user/Документы/project VS/Project Module 3/node_modules/mongoose/lib/cast/objectid.js:25:12)
             at ObjectId.cast (/home/user/Документы/project VS/Project Module 3/node_modules/mongoose/lib/schema/objectid.js:279:12)
             at ObjectId.SchemaType.applySetters (/home/user/Документы/project VS/Project Module 3/node_modules/mongoose/lib/schematype.js:1091:12)
             at model.$set (/home/user/Документы/project VS/Project Module 3/node_modules/mongoose/lib/document.js:1269:20)
             at model.$set (/home/user/Документы/project VS/Project Module 3/node_modules/mongoose/lib/document.js:1013:16)
             at model.Document (/home/user/Документы/project VS/Project Module 3/node_modules/mongoose/lib/document.js:148:12)
             at model.Model (/home/user/Документы/project VS/Project Module 3/node_modules/mongoose/lib/model.js:105:12)
             at new model (/home/user/Документы/project VS/Project Module 3/node_modules/mongoose/lib/model.js:4709:15)
             at module.exports.createNewTask (/home/user/Документы/project VS/Project Module 3/src/modules/controllers/task.controller.js:10:18)
             at Layer.handle [as handle_request] (/home/user/Документы/project VS/Project Module 3/node_modules/express/lib/router/layer.js:95:5)
             at next (/home/user/Документы/project VS/Project Module 3/node_modules/express/lib/router/route.js:137:13)
             at Route.dispatch (/home/user/Документы/project VS/Project Module 3/node_modules/express/lib/router/route.js:112:3)
             at Layer.handle [as handle_request] (/home/user/Документы/project VS/Project Module 3/node_modules/express/lib/router/layer.js:95:5)
             at /home/user/Документы/project VS/Project Module 3/node_modules/express/lib/router/index.js:281:22
             at Function.process_params (/home/user/Документы/project VS/Project Module 3/node_modules/express/lib/router/index.js:335:12) } },
  _message: [32m'tasks validation failed'[39m }
{ Error: tasks validation failed: _id: Cast to ObjectId failed for value "0" at path "_id"
    at ValidationError.inspect (/home/user/Документы/project VS/Project Module 3/node_modules/mongoose/lib/error/validation.js:47:26)
    at formatValue (internal/util/inspect.js:491:31)
    at inspect (internal/util/inspect.js:189:10)
    at Object.formatWithOptions (util.js:84:12)
    at Console.(anonymous function) (console.js:191:15)
    at Console.log (console.js:202:31)
    at task.save.then.catch.err (/home/user/Документы/project VS/Project Module 3/src/modules/controllers/task.controller.js:13:29)
    at process._tickCallback (internal/process/next_tick.js:68:7)
  errors:
   { _id:
      { CastError: Cast to ObjectId failed for value "0" at path "_id"
          at ObjectId.cast (/home/user/Документы/project VS/Project Module 3/node_modules/mongoose/lib/schema/objectid.js:281:11)
          at ObjectId.SchemaType.applySetters (/home/user/Документы/project VS/Project Module 3/node_modules/mongoose/lib/schematype.js:1091:12)
          at model.$set (/home/user/Документы/project VS/Project Module 3/node_modules/mongoose/lib/document.js:1269:20)
          at model.$set (/home/user/Документы/project VS/Project Module 3/node_modules/mongoose/lib/document.js:1013:16)
          at model.Document (/home/user/Документы/project VS/Project Module 3/node_modules/mongoose/lib/document.js:148:12)
          at model.Model (/home/user/Документы/project VS/Project Module 3/node_modules/mongoose/lib/model.js:105:12)
          at new model (/home/user/Документы/project VS/Project Module 3/node_modules/mongoose/lib/model.js:4709:15)
          at module.exports.createNewTask (/home/user/Документы/project VS/Project Module 3/src/modules/controllers/task.controller.js:10:18)
          at Layer.handle [as handle_request] (/home/user/Документы/project VS/Project Module 3/node_modules/express/lib/router/layer.js:95:5)
          at next (/home/user/Документы/project VS/Project Module 3/node_modules/express/lib/router/route.js:137:13)
          at Route.dispatch (/home/user/Документы/project VS/Project Module 3/node_modules/express/lib/router/route.js:112:3)
          at Layer.handle [as handle_request] (/home/user/Документы/project VS/Project Module 3/node_modules/express/lib/router/layer.js:95:5)
          at /home/user/Документы/project VS/Project Module 3/node_modules/express/lib/router/index.js:281:22
          at Function.process_params (/home/user/Документы/project VS/Project Module 3/node_modules/express/lib/router/index.js:335:12)
          at next (/home/user/Документы/project VS/Project Module 3/node_modules/express/lib/router/index.js:275:10)
          at Function.handle (/home/user/Документы/project VS/Project Module 3/node_modules/express/lib/router/index.js:174:3)
        stringValue: [32m'"0"'[39m,
        messageFormat: [90mundefined[39m,
        kind: [32m'ObjectId'[39m,
        value: [33m0[39m,
        path: [32m'_id'[39m,
        reason:
         Error: Argument passed in must be a single String of 12 bytes or a string of 24 hex characters
             at new ObjectID (/home/user/Документы/project VS/Project Module 3/node_modules/bson/lib/bson/objectid.js:59:11)
             at castObjectId (/home/user/Документы/project VS/Project Module 3/node_modules/mongoose/lib/cast/objectid.js:25:12)
             at ObjectId.cast (/home/user/Документы/project VS/Project Module 3/node_modules/mongoose/lib/schema/objectid.js:279:12)
             at ObjectId.SchemaType.applySetters (/home/user/Документы/project VS/Project Module 3/node_modules/mongoose/lib/schematype.js:1091:12)
             at model.$set (/home/user/Документы/project VS/Project Module 3/node_modules/mongoose/lib/document.js:1269:20)
             at model.$set (/home/user/Документы/project VS/Project Module 3/node_modules/mongoose/lib/document.js:1013:16)
             at model.Document (/home/user/Документы/project VS/Project Module 3/node_modules/mongoose/lib/document.js:148:12)
             at model.Model (/home/user/Документы/project VS/Project Module 3/node_modules/mongoose/lib/model.js:105:12)
             at new model (/home/user/Документы/project VS/Project Module 3/node_modules/mongoose/lib/model.js:4709:15)
             at module.exports.createNewTask (/home/user/Документы/project VS/Project Module 3/src/modules/controllers/task.controller.js:10:18)
             at Layer.handle [as handle_request] (/home/user/Документы/project VS/Project Module 3/node_modules/express/lib/router/layer.js:95:5)
             at next (/home/user/Документы/project VS/Project Module 3/node_modules/express/lib/router/route.js:137:13)
             at Route.dispatch (/home/user/Документы/project VS/Project Module 3/node_modules/express/lib/router/route.js:112:3)
             at Layer.handle [as handle_request] (/home/user/Документы/project VS/Project Module 3/node_modules/express/lib/router/layer.js:95:5)
             at /home/user/Документы/project VS/Project Module 3/node_modules/express/lib/router/index.js:281:22
             at Function.process_params (/home/user/Документы/project VS/Project Module 3/node_modules/express/lib/router/index.js:335:12) } },
  _message: [32m'tasks validation failed'[39m }
^C
]0;user@user-desktop: ~/Документы/project VS/Project Module 3[01;32muser@user-desktop[00m:[01;34m~/Документы/project VS/Project Module 3[00m$ node app.js
Example app listening on port 8000!
(node:12400) DeprecationWarning: Listening to events on the Db class has been deprecated and will be removed in the next major version.
{ MongoError: E11000 duplicate key error collection: ToDo.tasks index: _id_ dup key: { _id: 0 }
    at Function.create (/home/user/Документы/project VS/Project Module 3/node_modules/mongodb/lib/core/error.js:57:12)
    at toError (/home/user/Документы/project VS/Project Module 3/node_modules/mongodb/lib/utils.js:123:22)
    at coll.s.topology.insert (/home/user/Документы/project VS/Project Module 3/node_modules/mongodb/lib/operations/common_functions.js:258:39)
    at handler (/home/user/Документы/project VS/Project Module 3/node_modules/mongodb/lib/core/sdam/topology.js:943:24)
    at fn (/home/user/Документы/project VS/Project Module 3/node_modules/mongodb/lib/cmap/connection_pool.js:350:13)
    at handleOperationResult (/home/user/Документы/project VS/Project Module 3/node_modules/mongodb/lib/core/sdam/server.js:558:5)
    at MessageStream.messageHandler (/home/user/Документы/project VS/Project Module 3/node_modules/mongodb/lib/cmap/connection.js:277:5)
    at MessageStream.emit (events.js:198:13)
    at processIncomingData (/home/user/Документы/project VS/Project Module 3/node_modules/mongodb/lib/cmap/message_stream.js:144:12)
    at MessageStream._write (/home/user/Документы/project VS/Project Module 3/node_modules/mongodb/lib/cmap/message_stream.js:42:5)
    at doWrite (_stream_writable.js:415:12)
    at writeOrBuffer (_stream_writable.js:399:5)
    at MessageStream.Writable.write (_stream_writable.js:299:11)
    at TLSSocket.ondata (_stream_readable.js:710:20)
    at TLSSocket.emit (events.js:198:13)
    at addChunk (_stream_readable.js:288:12)
  driver: [33mtrue[39m,
  name: [32m'MongoError'[39m,
  index: [33m0[39m,
  code: [33m11000[39m,
  keyPattern: { _id: [33m1[39m },
  keyValue: { _id: [33m0[39m } }
MongooseError: document must have an _id before saving
    at Timeout._onTimeout (/home/user/Документы/project VS/Project Module 3/node_modules/mongoose/lib/model.js:268:18)
    at ontimeout (timers.js:436:11)
    at tryOnTimeout (timers.js:300:5)
    at listOnTimeout (timers.js:263:5)
    at Timer.processTimers (timers.js:223:10)
MongooseError: document must have an _id before saving
    at Timeout._onTimeout (/home/user/Документы/project VS/Project Module 3/node_modules/mongoose/lib/model.js:268:18)
    at ontimeout (timers.js:436:11)
    at tryOnTimeout (timers.js:300:5)
    at listOnTimeout (timers.js:263:5)
    at Timer.processTimers (timers.js:223:10)
MongooseError: document must have an _id before saving
    at Timeout._onTimeout (/home/user/Документы/project VS/Project Module 3/node_modules/mongoose/lib/model.js:268:18)
    at ontimeout (timers.js:436:11)
    at tryOnTimeout (timers.js:300:5)
    at listOnTimeout (timers.js:263:5)
    at Timer.processTimers (timers.js:223:10)
^C
]0;user@user-desktop: ~/Документы/project VS/Project Module 3[01;32muser@user-desktop[00m:[01;34m~/Документы/project VS/Project Module 3[00m$ node app.js
Example app listening on port 8000!
(node:12767) DeprecationWarning: Listening to events on the Db class has been deprecated and will be removed in the next major version.
MongooseError: document must have an _id before saving
    at Timeout._onTimeout (/home/user/Документы/project VS/Project Module 3/node_modules/mongoose/lib/model.js:268:18)
    at ontimeout (timers.js:436:11)
    at tryOnTimeout (timers.js:300:5)
    at listOnTimeout (timers.js:263:5)
    at Timer.processTimers (timers.js:223:10)
^C
]0;user@user-desktop: ~/Документы/project VS/Project Module 3[01;32muser@user-desktop[00m:[01;34m~/Документы/project VS/Project Module 3[00m$ node app.js
Example app listening on port 8000!
(node:12908) DeprecationWarning: Listening to events on the Db class has been deprecated and will be removed in the next major version.
MongooseError: document must have an _id before saving
    at Timeout._onTimeout (/home/user/Документы/project VS/Project Module 3/node_modules/mongoose/lib/model.js:268:18)
    at ontimeout (timers.js:436:11)
    at tryOnTimeout (timers.js:300:5)
    at listOnTimeout (timers.js:263:5)
    at Timer.processTimers (timers.js:223:10)
MongooseError: document must have an _id before saving
    at Timeout._onTimeout (/home/use