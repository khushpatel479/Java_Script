// let i1 = document.querySelector("#img1")
// let i2 = document.querySelector("#img2")
// let i3 = document.querySelector("#img3")
// let b1 = document.querySelector("#btn1")
// let b2 = document.querySelector("#btn2")

// b1.addEventListener("click" , ()=>
//     {
//         i2.classList.add("ac2")
//         i1.classList.remove("ac1")
//         i3.classList.add("ac3")
       
//     }
// )
// b2.addEventListener("click" , ()=>
// {
//     i1.classList.add("ac1")
//     i2.classList.remove("ac2")
// })


let slide = document.querySelectorAll(".slide")
let curr = 0

function showslide(index)
{
    slide.forEach((item,i)=>
    {
        item.classList.toggle("visible",i===index)
        item.classList.toggle("hidden",i!==index)

    })
}


let btn1 = document.querySelector("#btn1")
btn1.addEventListener("click" , ()=>
{
    curr = (curr+1) % slide.length
    showslide(curr)
}) 