var mydata = JSON.parse(data);

for(var i =0; i < mydata.length;i++){
    add(mydata[i].value);
}


function save(data){
    var jsonStr = JSON.stringify(data);

}

function jsonDel(data,value){
    for(var i =0; i < data.length;i++){
        if (data.value == value) data.splice(i, 1, null);
    }

    save(myData);
}

function add(value){
    document.querySelector('#tasks').innerHTML += `
    <div class="task">
        <span id="taskname">
            ${value}
        </span>
        <button class="delete">
        <img src="delete-forever.png">
        </button>
    </div>
    `;
    document.querySelector('#newtask input').value= "";   
}

function del(value){
    var current_tasks = document.querySelectorAll(".delete");
    for(var i=0; i<current_tasks.length; i++){
        current_tasks[i].onclick = function(){
            this.parentNode.remove();
            jsonDel(myData,value);
        }
    }
}

document.querySelector('#push').onclick = function(){
    if(document.querySelector('#newtask input').value.length == 0){
        alert("Please Enter a Task")
    }
    else{
        add(document.querySelector('#newtask input').value)
        del(document.querySelector('#newtask input').value);
    }
}





