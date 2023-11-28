package misClases;
import java.util.*;

public class Ejercicio5 {

	public static void main(String[] args) 
	{
		int x=0;
		char y;
		
		
		String nombre="Nicolas";
		
		Persona p1=new Persona();
		Persona p2=new Persona();
		
		Persona otraPersona=new Persona();
		
		p1.nombre="Nicolas";
		p1.apellido="Fernandez";
		p1.edad=42;
		p1.saludar();
		
		p2.nombre="Julieta";
		p2.apellido="Rey";
		p2.edad=44;
		p2.saludar();
		
		otraPersona.nombre="Pablo";
		otraPersona.apellido="Avila";
		otraPersona.edad=14;
		otraPersona.saludar();
		
		List<String> listadeNombres=new ArrayList<>();
		listadeNombres.add("Nicolas");
		
		List<Persona> listadePersonas=new ArrayList<>();
		listadePersonas.add(p1);
		listadePersonas.add(p2);
		listadePersonas.add(otraPersona);
		
		for(Persona aux: listadePersonas)
		{
			System.out.println(aux.apellido);			
		}
		
		

	}

}
