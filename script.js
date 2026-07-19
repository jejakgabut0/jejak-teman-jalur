// animasi scroll sederhana

window.addEventListener("scroll",()=>{

const header=document.querySelector("header");

if(window.scrollY>50){

header.style.background="rgba(0,0,0,.85)";

}else{

header.style.background="rgba(0,0,0,.55)";

}

});


// pesan otomatis whatsapp

function whatsapp(){

let pesan=
"Halo Admin Jejak Teman, saya ingin info privat trip";

window.open(
"https://wa.me/6280000000000?text="
+encodeURIComponent(pesan)
);

}