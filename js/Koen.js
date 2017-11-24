window.addEventListener("load",function(e){
    var album = document.getElementById('imagesDiv');
    var display = document.getElementById('display');
    var fotos = ["./img/Koen1.png",
        "./img/Koen2.png",
        "./img/Koen3.png",
        "./img/Koen4.png",
        "./img/Koen5.png"];

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