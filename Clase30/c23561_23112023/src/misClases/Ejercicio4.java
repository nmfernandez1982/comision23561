package misClases;

public class Ejercicio4 {

	public static void main(String[] args) 
	{
		String nombre="Camila";
		saludar();
		saludar();
		saludar();
		saludar();
		
		saludarConNombre("Nicolas");
		saludarConNombre("Pablo");
		saludarConNombre(nombre);
		
		
		nombre=saludarConNombrePlus("Julieta");
		
		System.out.println("EL nombre desde la funcion es:"+nombre);
	}
	
	public static void saludar()
	{
		System.out.println("Hola mundo......");
	}
	
	public static void saludarConNombre(String n)
	{
		System.out.println("Hola mundo...... "+n);
	}
	
	public static String saludarConNombrePlus(String n)
	{
		n="Alumna: "+n;
		System.out.println("Hola mundo...... "+n);		
		return n;
	}
	
	
	
	
	

}
