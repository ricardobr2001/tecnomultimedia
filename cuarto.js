class cuarto{
  
  constructor(){
    this.crearSoldadito();
    this.crearJuguete();
    this.crearPuntaje();
    
  
  }
  
  dibujar(){
    this.soldadito.dibujar();
    this.juguete.dibujar();
    this.puntaje.dibujar();
    
  
  }
  
  
  crearSoldadito(){
    this.soldadito = new soldadito();
  
  }
  
  crearJuguete(){
    this.juguete = new juguete();
  
  }
  
  crearPuntaje(){
    this.puntaje = new puntaje();
  
  }
  
  

}
