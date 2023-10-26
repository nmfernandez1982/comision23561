//json ---> javascripts object notacion.
const alumnos=
[
    {
       "id":1,
       "nombre":"Nicolas",
       "apellido":"Fernandez",
       "estado":true 
    },
    {
        "id":2,
        "nombre":"Pilar",
        "apellido":"Hernandez",
        "estado":false 
     },
    
     {
        "id":3,
        "nombre":"Nicolas",
        "apellido":"Fernandez",
        "estado":true 
     },
    
     {
        "id":4,
        "nombre":"Julitea",
        "apellido":"Rey",
        "estado":false 
     }];

//url
//const api='https://jsonplaceholder.typicode.com/users';

var idUser=5;

const api=`https://jsonplaceholder.typicode.com/users/${idUser}`;

fetch(api).then(response=>
    {
        if(!response.ok)
        {
            throw new error ("No se encuentra el dato");
        }
        return response.json();
        })
    .then (datos=>
        {
            console.log("Los datos del usuario son:",datos);
        })
    .catch(error=>
        {
         console.log("hay un error",error);   
        }); 
    
    
    
    






