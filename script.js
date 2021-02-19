//если нажать кнопка изменять то менять класс на инпут
//получить доступ в контейнере к тексту
//добавить сумму в итого

let allTasks = [];
let counter = [];
let valueInput = '';
let valueInputHow = '';
let input = null;
let container;
let indexEdit = -1;
let sum = 0;
let flagEdit = false;
/*
const express = require('express');
const mongoose = require('mongoose');
const app = express();
const Schema = mongoose.Schema;

const taskScheme = new Schema ({
  text: String,
  isCheck: Boolean
});*/
/*
const uri = "mongodb+srv://kgarnov:kgarnov@todoclaster.gad3l.mongodb.net/ToDo?retryWrites=true&w=majority";
mongoose.connect(uri, {useNewUrlParser: true,useUnifiedTopology: true});
*/
window.onload = function init () {
  input = document.getElementById('add-where');
  input.addEventListener('change', updateValue);
  inputHow = document.getElementById('add-how');
  inputHow.addEventListener('change', updateValueHow);
  /*const responce = await fetch('http://localhost:8000/allTasks', {
  method: 'GET'
  });
  let result = await responce.json(); 
  allTasks = result.data;*/
  render();
}

onClickButton = async () => {
 allTasks.push({
   text: valueInput,
   isCheck: false
 });
 if(valueInputHow <=0) alert("Зачем записывать??? Только расходы");
 else {
 counter.push(valueInputHow);
 console.log(counter);
 sum+=valueInputHow;
 /*const responce = await fetch('http://localhost:8000/createTask', {
  method: 'POST',
  headers: {
    'Content-Type':'application/json;charset=utf-8',
    'Access-Control-Allow-Origin': '*'
  },
    body: JSON.stringify({
      text: valueInput,
      isCheck: false
    })
  });
  let result = await responce.json(); 
  allTasks = result.data;*/
// localStorage.setItem('tasks', JSON.stringify(allTasks));
 valueInput = '';
 input.value = '';
 valueInputHow = '';
 inputHow.value = '';
 render();
}
}

updateValue = (event) => {
  valueInput = event.target.value;
  if (indexEdit >= 0) {
    allTasks[indexEdit].text = event.target.value;
  }
}

updateValueHow = (event) => {
  valueInputHow = event.target.value;
  if (indexEdit >= 0) {
    counter[indexEdit].text = event.target.value;
  }
}

render = () => {
  const content = document.getElementById('content-page');
  
  while(content.firstChild) {
    content.removeChild(content.firstChild);
  }
  allTasks.map((item,index) => {
    container = document.createElement('div');
    container.id = `task-${index}`;
    container.className = 'task-container';
    const checkbox = document.createElement('input');
    checkbox.type = 'checkbox';
    checkbox.className = "image";
    checkbox.checked = item.isCheck;
    checkbox.onchange = function () {
      onChangeCheckbox(index);
    };
    container.appendChild(checkbox);

    const text = document.createElement('p');
    text.innerText = item.text;
    text.className = item.isCheck ? 'done-text' : 'text-task ';
    container.appendChild(text);

    const imageEdit = document.createElement('img');
    imageEdit.src = 'edit.png';
    imageEdit.className = "image";
    let lastIndex = index;
    imageEdit.onclick = function () {
      indexEdit = index;
      funcEdit(index);
    }
    container.appendChild(imageEdit);

    const imageDelete = document.createElement('img');
    imageDelete.src = 'delete.png';
    imageDelete.className = "image";
    imageDelete.onclick = function () {
      funcdelete(index);
    }

    container.appendChild(imageDelete);

    content.appendChild(container);

  });
}

onChangeCheckbox = async (index) => {
 allTasks[index].isCheck = !allTasks[index].isCheck;
 /*const responce = await fetch(`http://localhost:8000/updateTask`, {
  method: 'PATCH',
  headers: {
    'Content-Type':'application/json;charset=utf-8',
    'Access-Control-Allow-Origin': '*'
  },
  body: JSON.stringify({
    isCheck: allTasks[index].isCheck,
    text: allTasks[index].text,
    id: allTasks[index].id
  })
  });*/
 render();
}

funcdelete = async (index) => {
  /*const responce = await fetch(`http://localhost:8000/deleteTask?id=${allTasks[index].id}`, {
    method: 'DELETE',
    headers: {
      'Content-Type':'application/json;charset=utf-8',
      'Access-Control-Allow-Origin': '*'
    },
    });

  allTasks.splice(index,1);*/
 // localStorage.setItem('tasks', JSON.stringify(allTasks));

  render();
}

funcEdit = (index) => {
  //flagEdit = true;
  const editInput = document.createElement('input');
  editInput.type = 'text';
  indexEdit = index;

  container = document.getElementById(`task-${index}`);
  const imageDone = document.createElement('img');
  console.log(container);
  imageDone.src = 'done.png';
  imageDone.className = "image";
  container.appendChild(imageDone); 
  container.appendChild(editInput);
  editInput.value = allTasks[index].text;
  editInput.addEventListener('change', editSave);

  imageDone.onclick = async function () {
  editInput.value = '';
  /*const responce = await fetch(`http://localhost:8000/updateTask`, {
    method: 'PATCH',
    headers: {
      'Content-Type':'application/json;charset=utf-8',
      'Access-Control-Allow-Origin': '*'
    },
    body: JSON.stringify({
      id: allTasks[index].id,
      text: allTasks[index].text
    })
    });*/
  render();
  }


}
editSave = (event) => {
  allTasks[indexEdit].text = event.target.value;
  indexEdit = -1;
}

deleteStorage = () => {
allTasks=[];
//localStorage.clear();
render();
}