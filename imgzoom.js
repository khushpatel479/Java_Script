let i1 = document.querySelector("#i1")
let i2 = document.querySelector("#i2")
let i3 = document.querySelector("#i3")

i1.addEventListener("click" , ()=>
{
    i1.classList.add("zoom")
})
i1.addEventListener('dblclick', ()=>
{
    i1.classList.remove("zoom")
})