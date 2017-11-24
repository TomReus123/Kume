window.addEventListener("load",function(e){
    var album = document.getElementById('imagesDiv');
    var display = document.getElementById('display');
    var fotos = ["./img/Tom1.png",
        "./img/Tom2.png",
        "./img/Tom3.png",
        "./img/Tom4.png",
        "./img/Tom5.png"];

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