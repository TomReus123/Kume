window.addEventListener("load",function(e){
    var album = document.getElementById('imagesDiv');
    var display = document.getElementById('display');
    var fotos = ["./img/Lucas1.png",
        "./img/Lucas2.png",
        "./img/Lucas3.PNG",
        "./img/Lucas4.PNG",
        "./img/Lucas5.PNG"];

    for(i=0; i<5;i++){
        var foto = new Image();
        foto.src = fotos[i];
        album.appendChild(foto);
        foto.id = i;
        foto.addEventListener("click",function(ev){
            console.log(ev.target);
            display.src = fotos[ev.target.id];
        });
    }
});