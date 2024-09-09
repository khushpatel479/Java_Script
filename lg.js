let i1 = document.querySelector("#img1")
let i2 = document.querySelector("#img2")
let b1 = document.querySelector("#btn1")
let b2 = document.querySelector("#btn2")

b1.addEventListener("click" , ()=>
{
    i2.classList.add("ac2")
    i1.classList.remove("ac2")
})
b2.addEventListener("click" , ()=>
{
    i1.classList.add("ac1")
    i2.classList.remove("ac2")
   
})