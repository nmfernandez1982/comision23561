package misClases;

public class Vehiculo 
{
	//atributos
	
	private String marca;
	private String modelo;
	private int motor;
	private int tamanioTanque;
	private int cantCombustible;
	
	//public-private-protected-default
	
	
	//constructor:
	
	//Combinacion de nombre y atributos del metodo.
	
	
	public Vehiculo()
	{
		
	}
	
	
	
	public Vehiculo(String marca, String modelo, int motor, int tamanioTanque) 
	{
		super(); //herencia 
		this.marca = marca;
		this.modelo = modelo;
		this.motor = motor;
		this.tamanioTanque = tamanioTanque;
	}



	public Vehiculo(String marca,String modelo) 
	{
		this.marca=marca;
		this.modelo=modelo;		
	}
	
	public Vehiculo(String marca,String modelo,int motor) 
	{
		this.marca=marca;
		this.modelo=modelo;		
		this.motor=motor;
	}
		
	
	//getters y setters
	
	public String getMarca() {
		return marca;
	}


	public void setMarca(String marca) {
		this.marca = marca;
	}


	public String getModelo() {
		return modelo;
	}


	public void setModelo(String modelo) {
		this.modelo = modelo;
	}


	public int getMotor() {
		return motor;
	}


	public void setMotor(int motor) {
		this.motor = motor;
	}


	public int getTamanioTanque() {
		return tamanioTanque;
	}


	public void setTamanioTanque(int tamanioTanque) {
		this.tamanioTanque = tamanioTanque;
	}


	public int getCantCombustible() {
		return cantCombustible;
	}


	public void setCantCombustible(int cantCombustible) {
		this.cantCombustible = cantCombustible;
	}
	
	
	//metodo consume 1 litro de combustible.
	
	
	public void imprimir()
	{
		System.out.println("Marca: "+this.marca+" Modelo:"+this.modelo+" Motor: "+this.motor+" Tanque: "+this.tamanioTanque+" Conbustible:"+this.cantCombustible);
	
	}
	
	@Override
	public String toString()
	{
		return "Marca: "+this.marca+" Modelo:"+this.modelo+" Motor: "+this.motor+" Tanque: "+this.tamanioTanque+" Conbustible:"+this.cantCombustible;
	}
	
	
	

}
