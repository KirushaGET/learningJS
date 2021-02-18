localStorage.clear();
let allTasks = JSON.parse(localStorage.getItem('tasks'))||[];
let valueInput = '';
let input = null;
let container;
let indexEdit = -1;

window.onload = async function init () {
  input = document.getElementById('add-task');
  input.addEventListener('change', updateValue);
  const responce = await fetch('http://localhost:8000/allTasks', {
  method: 'GET'
  });
  let result = await responce.json(); 
  allTasks = result.data;
  render();
}

onClickButton = async () => {
 allTasks.push({
   text: valueInput,
   isCheck: false
 });
 const responce = await fetch('http://localhost:8000/createTask', {
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
  allTasks = result.data;
 localStorage.setItem('tasks', JSON.stringify(allTasks));
 valueInput = '';
 input.value = '';
 render();
}

updateValue = (event) => {
  valueInput = event.target.value;
  if (indexEdit >= 0) {
    allTasks[indexEdit].text = event.target.value;
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
    checkbox.checked = item.isCheck;
    checkbox.onchange = function () {
      onChangeCheckbox(index);
    };
    container.appendChild(checkbox);

    const text = document.createElement('p');
    text.innerText = item.text;
    text.className = item.isCheck ? 'text-task done-text' : 'text-task ';
    container.appendChild(text);

    const imageEdit = document.createElement('img');
    imageEdit.src = 'edit.png';
    let lastIndex = index;
    imageEdit.onclick = function () {
      indexEdit = index;
      funcEdit(index);
    }
    container.appendChild(imageEdit);

    const imageDelete = document.createElement('img');
    imageDelete.src = 'delete.png';
    imageDelete.onclick = function () {
      funcdelete(index);
    }

    container.appendChild(imageDelete);

    content.appendChild(container);

  });
}

onChangeCheckbox = async (index) => {
 allTasks[index].isCheck = !allTasks[index].isCheck;
 const responce = await fetch(`http://localhost:8000/updateTask`, {
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
  });
 render();
}

funcdelete = async (index) => {
  const responce = await fetch(`http://localhost:8000/deleteTask?id=${allTasks[index].id}`, {
    method: 'DELETE',
    headers: {
      'Content-Type':'application/json;charset=utf-8',
      'Access-Control-Allow-Origin': '*'
    },
    });

  allTasks.splice(index,1);
  localStorage.setItem('tasks', JSON.stringify(allTasks));

  render();
}

funcEdit = (index) => {
  const editInput = document.createElement('input');
  editInput.type = 'text';
  indexEdit = index;

  container = document.getElementById(`task-${index}`);
  const imageDone = document.createElement('img');
  imageDone.src = 'done.png';
  container.appendChild(imageDone); 
  container.appendChild(editInput);
  editInput.value = allTasks[index].text;
  editInput.addEventListener('change', editSave);

  imageDone.onclick = async function () {
  editInput.value = '';
  const responce = await fetch(`http://localhost:8000/updateTask`, {
    method: 'PATCH',
    headers: {
      'Content-Type':'application/json;charset=utf-8',
      'Access-Control-Allow-Origin': '*'
    },
    body: JSON.stringify({
      id: allTasks[index].id,
      text: allTasks[index].text
    })
    });
  render();
  }


}
editSave = (event) => {
  allTasks[indexEdit].text = event.target.value;
  indexEdit = -1;
}

deleteStorage = () => {
allTasks=[];
localStorage.clear();
render();
}
