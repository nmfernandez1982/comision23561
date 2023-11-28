package misClases;


import java.util.*;

public class Ejercicio3 {

	public static void main(String[] args) 
	{
		int[] arrayEnteros= {88,99,100,14};
				           // 0  1  2   3
		
		int[] arrayEnteros2=new int[5];
		
		char[] arrayChar=new char[50];
		
		for(int x=0;x<arrayEnteros.length;x++)
		{
			System.out.println("El valor de la pos.["+x+"] es "+arrayEnteros[x]);
		}
		
		String[] arrayString= {"Nicolas","Camila","Alberto","Pablo"};
		
		//array de objetos.
		
		
		//listas
		
		List<Integer> listaDeNumeros=new ArrayList<>();
		
		List<String> listaDeString=new ArrayList<>();
		
		listaDeString.add("Nicolas");
		listaDeString.add("Camila");
		listaDeString.add("Alberto");
		listaDeString.add("Pablo");
		
		//puedo crear una lista de objetos.
				
		for (String aux : listaDeString) 
		{
			System.out.println(aux);
		}
		
		
		System.out.println("El elemento en la pos 2 es:" +listaDeString.get(2));
		
		
		
	}

}
