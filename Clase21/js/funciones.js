function funcion()
{
    x=document.getElementById("seleccion").value;
    //alert(x);
    document.getElementById("suEleccion").innerHTML="El lenguaje es: "+x;
}
function cambiar()
{
document.getElementById("eventListener").innerHTML="Se disparo un evento del boton..";
}


aux=document.getElementById("escuchar");
aux.addEventListener('click',cambiar);

aux2=document.getElementById("escuchar2");
aux2.addEventListener('click',cambiar2);
aux2.addEventListener('mouseover',cambiar2);
aux2.addEventListener('mouseout',cambiar2);

function cambiar2()
{
document.getElementById("eventListener").innerHTML+="Se disparo con otros eventos...";
}











