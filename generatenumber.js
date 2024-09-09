let num = document.querySelector("#num")
let a=0
let ge = ()=>
{
    a = Math.random()*100
    alert(a)
    
}
num.addEventListener("click",()=>
{
    ge()
})