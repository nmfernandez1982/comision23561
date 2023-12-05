package misClases;
import java.util.*;

public class Principal {

	public static void main(String[] args) 
	{
	/*
	Vehiculo v1=new Vehiculo();
	Vehiculo v2=new Vehiculo();
	Vehiculo Otro=new Vehiculo();
	
	Otro.marca="Renault";
	v2.marca="Ford";	
	v1.modelo="Clio";
	*/
		
		
		
	Vehiculo v1=new Vehiculo("Renault","Clio");	
	
	Vehiculo v2=new Vehiculo("Ford","Ranger",2500);	
	
	Vehiculo v3=new Vehiculo("Chevrolet","S10",2500,50);	
	
	Vehiculo v4=new Vehiculo();
	//v4.motor=1500;
	v4.setMotor(1500);
	v4.setMarca("Fiat");
	
	
	
		
	v1.imprimir();
	v2.imprimir();
	v3.imprimir();
	v4.imprimir();
	
	

	
	System.out.println(v1.toString());
	
	System.out.println("-------------------------------------");
	
	List<Vehiculo> listadeVehiculos=new ArrayList<>();
	listadeVehiculos.add(v1);
	listadeVehiculos.add(v2);
	listadeVehiculos.add(v3);
	listadeVehiculos.add(v4);
	
	for (Vehiculo vehiculo : listadeVehiculos)
	{
		
		System.out.println(vehiculo);
	
	}
	
	
		
	}

}
