let allTasks = [];
let valueInput = '';
let valueInputHow = '';
let input = null;
let container;
let indexEdit = -1;
let sum = 0;
let flagEdit = false;
let editTextTemp = "";
let editNumTemp;


window.onload = async function init () {
  input = document.getElementById('add-where');
  input.addEventListener('change', updateValue);
  inputHow = document.getElementById('add-how');
  inputHow.addEventListener('change', updateValueHow);
  const responce = await fetch('http://localhost:8000/allTasks', {
  method: 'GET'
  });
  let result = await responce.json(); 
  allTasks = result.data;
  allTasks.map((item,index) => {
    sum += +(item.how);
  });
  const SumWin = document.getElementById('sumValue');
  SumWin.textContent=sum;
  render();
}

onClickButton = async () => {
 if(valueInput === '' && valueInputHow <=0) alert("Введите два корректные значения");
 else if(valueInputHow <=0) alert("Расходы не могут быть отрицательными");
 else if(valueInput === '') alert("Введите название магазина");
 else if (!(+(valueInputHow))) alert("Введите корректное значение");
 else {

 sum+=+(valueInputHow);
 const responce = await fetch('http://localhost:8000/createTask', {
  method: 'POST',
  headers: {
    'Content-Type':'application/json;charset=utf-8',
    'Access-Control-Allow-Origin': '*'
  },
  body: JSON.stringify({
    how: valueInputHow,
    text: valueInput,
  })
 });
 let result = await responce.json(); 
 allTasks.push(result);
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
    allTasks[indexEdit].how = +(event.target.value);
  }
}

render = async () => {
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
      //let imageEdit1 = document.getElementById("edit1");
     // console.log(imageEdit1);
      //container.removeChild(imageEdit1);
      const text = document.createElement('input');
      text.type = 'text';
      text.value = allTasks[index].text;
      text.addEventListener('change', editText);
      container.appendChild(text);

      const text3 = document.createElement('input');
      text3.type = 'text';
      text3.value = allTasks[index].how;
      text3.addEventListener('change', editText2);
      container.appendChild(text3);

      const ere = document.getElementById('niz');
      ere.innerText='Дважды нажмите здесь чтобы сохранить';
      ere.ondblclick = function() {
        funcSave();
        indexEdit =-1;
        render();
      }

      const imageDone = document.createElement('img');
      imageDone.src = 'done.png';
      imageDone.className = "image";
      container.appendChild(imageDone); 

      const imageDelete = document.createElement('img');
      imageDelete.src = 'delete.png';
      imageDelete.className = "image";
  
      container.appendChild(imageDelete);

      imageDelete.onclick = function () {
        indexEdit =-1;
        ere.innerText ='';
        render();
      }

      imageDone.onclick = async function  () {
        //с числом
        funcSave (index);
    }
    }
    else {
      const text2 = document.createElement('p');
      text2.innerText = item.text;
      text2.className = 'text-task ';
      container.appendChild(text2);

      const SumWindow = document.createElement('p');
      SumWindow.innerText = allTasks[index].how;
      SumWindow.className = 'SumWindow';
      container.appendChild(SumWindow);
    }

    container.ondblclick = function () {
      indexEdit = index;
      render();
    }
    const imageEdit = document.createElement('img');
    imageEdit.src = 'edit.png';
    //imageEdit.id = 'edit1';
    imageEdit.className = "image";
    let lastIndex = index;
    imageEdit.onclick = function () {
      indexEdit = index;
      render();
    }
    container.appendChild(imageEdit);

    const imageDelete2 = document.createElement('img');
    imageDelete2.src = 'delete2.png';
    imageDelete2.className = "image";
    imageDelete2.onclick = function () {
      indexEdit = -1;
      const ere = document.getElementById('niz');
      ere.innerText = '';
      funcdelete(index);
    }

    container.appendChild(imageDelete2);
    content.appendChild(container);
  });
}

editText = (e) => {
  //allTasks[indexEdit].text = e.target.value;
  editTextTemp = e.target.value;
}

editText2 = (e) => {
  editNumTemp = +(e.target.value);  
  /*
  sum-=counter[indexEdit];
  counter[indexEdit] = +(e.target.value);
  sum+=counter[indexEdit];
  const SumWin = document.getElementById('sumValue');
  SumWin.textContent=sum;*/
}

onChangeCheckbox = async (index) => {
 allTasks[index].isCheck = !allTasks[index].isCheck;
 render();
}

funcdelete = async (index) => {
  sum -= allTasks[index].how;
  const SumWin = document.getElementById('sumValue');
  SumWin.textContent=sum;
  const responce = await fetch(`http://localhost:8000/deleteTask?_id=${allTasks[index]._id}`, {
    method: 'DELETE'
    });
  const responce2 = await fetch('http://localhost:8000/allTasks', {
    method: 'GET'
  });
  let result = await responce2.json(); 
  allTasks = result.data;
  render();
}

  funcSave = async (index) => {
     if(editNumTemp)
       {
      sum-=allTasks[index].how;
      allTasks[index].how = +(editNumTemp);
      sum+=allTasks[index].how;
      const SumWin = document.getElementById('sumValue');
      SumWin.textContent=sum;
       }
      //с текстом
      if(editTextTemp) allTasks[indexEdit].text = editTextTemp;
      const responce = await fetch(`http://localhost:8000/updateTask`, {
        method: 'PATCH',
        headers: {
          'Content-Type':'application/json;charset=utf-8',
          'Access-Control-Allow-Origin': '*'
        },
        body: JSON.stringify({
          _id: allTasks[indexEdit]._id,
          text: allTasks[indexEdit].text,
          how: allTasks[indexEdit].how
        })
        });
      editNumTemp = NaN;
      editTextTemp = "";
      indexEdit =-1;
      const ere = document.getElementById('niz');
      ere.innerText = "";

      render();
    }

