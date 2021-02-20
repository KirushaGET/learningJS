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
 if(valueInputHow <=0) alert("Зачем записывать??? Только расходы");
 else if (!(+(valueInputHow))) alert("Введите корректное значение");
 else {
  allTasks.push({
    text: valueInput,
    isCheck: false
  });
 counter.push(valueInputHow);
 sum+=+(valueInputHow);
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
 const SumWin = document.getElementById('sumValue');
 SumWin.textContent=sum;

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
    counter[indexEdit].text = +(event.target.value);
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
    const num = document.createElement('pre');
    num.className = "numb";
    num.innerText = `${index+1}) `;
    container.appendChild(num); 

    if(indexEdit === index) {
      const text = document.createElement('input');
      text.value = allTasks[index].text;
      text.addEventListener('change', editText);
      container.appendChild(text);

      const imageDone = document.createElement('img');
      imageDone.src = 'done.png';
      imageDone.className = "image";
      container.appendChild(imageDone); 

      imageDone.onclick = async function () {
      indexEdit =-1;
      render();
    }
    }
    else {
      const text2 = document.createElement('p');
      text2.innerText = item.text;
      text2.className = item.isCheck ? 'done-text' : 'text-task ';
      container.appendChild(text2);
    }

    const SumWindow = document.createElement('p');
    SumWindow.innerText = counter[index];
    SumWindow.className = 'SumWindow';
    container.appendChild(SumWindow);

    const imageEdit = document.createElement('img');
    imageEdit.src = 'edit.png';
    imageEdit.className = "image";
    let lastIndex = index;
    imageEdit.onclick = function () {
      indexEdit = index;
      render();
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

editText = (e) => {
  allTasks[indexEdit].text = e.target.value;
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
*/
  sum -= counter[index];
  allTasks.splice(index,1);
  counter.splice(index,1);
  const SumWin = document.getElementById('sumValue');
  SumWin.textContent=sum;
  // localStorage.setItem('tasks', JSON.stringify(allTasks));
  render();
}

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

  

