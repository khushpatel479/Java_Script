// function func_one()
// {
//     console.log("called function one");
//     return "return function one"
// }
// function func_two(abc)
// {
//     console.log("called function two");
//     return "return function two"
// }
// function func_three(abc)
// {
//     console.log("function three called");
//     return func_two()
// }
// let y = func_three(func_two);
// console.log(y);

//anonymous function : 

// let a = ()=>
// {
//     return()=>
//     {
//         return "anonymous function"
//     }
// }

// console.log(a()())



// let b = (arg) =>
// {
//     console.log(arg())   
// }
// b(()=>"ano1")


// let func_one = ()=>
// {
//     return()=>
//     {
//         return()=>
//         {
//             return "func_one"
//         }
//     }
// }

// console.log(func_one()())


// let func = (...a4)=>
// {
//     console.log(
//         a4)
// }
// func(1,2,3,4,5,6,7)

// let f1 = (arg1)=>
// {
//     console.log(arg1())
// }

// f1(()=>
// {
//     return "arg1"
// })

// function f1()
// {
//     console.log("called f1")

//     return "return f1"

// }
// function f2(abc)
// {
//     return abc  
// }

// let y = f2(f1)

// console.log(y())


// function f3(q,...a)
// {
    
// }


function a()
{
    
    console.log("called a");
    return "return a"
}

function b(axc)
{
    return axc;
}

let t = b(a)
console.log(t())







