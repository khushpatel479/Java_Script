let em = document.querySelector("#em")
let sub = document.querySelector("#sub")
let nt = document.querySelector("#nt")
// sub.addEventListener("click" , ()=>
// {
//     let yp = em.value.split('')
//     if(yp.includes("@"))
//     {
//         alert("ik")
//     }
//     else
//     {
//         alert("sorry")
//     }
// })

let arr=[]

sub.addEventListener("click" , ()=>
{
    let val = em.value
    let newval = val.split(',')
    arr = [...arr,...newval]
    console.log(arr)
    load()
})

function load()
{
    let yp=[]
    nt.innerHTML=""
    arr.forEach((item,index)=>
    {
        let li = document.createElement("li")
        li.innerText = item
        // li.addEventListener("click" , ()=>dele(index))
        li.addEventListener("click" , ()=>
        {
             yp=li.style.textDecoration="line-through"
            console.log(yp)
        })
        nt.appendChild(li)

    })
    
}

function dele(index)
{
    arr.splice(index,1)
    load()
}
