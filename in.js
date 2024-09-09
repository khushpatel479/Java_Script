let b1 = document.querySelector("#plus");
let b2 = document.querySelector("#min");
let t1 = document.querySelector("#qty");
let y=0;
let p = document.querySelector("#lp");
b1.addEventListener("click" , ()=>
{
    y++;
   t1.innerHTML = y; 
})
b2.addEventListener("click" , ()=>
{
    if(y>0)
    {
    y--;
    }
        t1.innerHTML = y;
    
})

p.addEventListener("click" , ()=>
{
    let r = t1.innerHTML;
    alert(r);
})

function timerCompleted() {
    console.log("20 minutes have passed!");
}

// Set the timer for 20 minutes (1200 seconds)
const twentyMinutesInMilliseconds = 20 * 60 * 1000; // 20 minutes * 60 seconds * 1000 milliseconds
setTimeout(timerCompleted, twentyMinutesInMilliseconds);

console.log("Timer started for 20 minutes.");