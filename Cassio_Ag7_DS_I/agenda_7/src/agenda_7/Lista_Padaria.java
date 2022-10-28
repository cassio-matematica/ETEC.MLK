package agenda_7;
import java.util.Scanner;

public class Lista_Padaria {

	public static void main(String[] args) {
	
Scanner input = new Scanner (System.in);

float preco;
String produto;


System.out.println("Esta samana faremos uma promoção na padaria, selecione 10 produtos para nosso evento!");


		for ( int i = 0; i<=10; i ++){
		
			System.out.println("Digite o nome do produto:"); 
			produto = input.next(); 
			
			System.out.println("Digite o preço do produto:");
			preco = input.nextFloat();
			
			System.out.println ( " O produto " + produto + " custará " + preco/2 + " esta semana! ");
			
		}
			
		}
	}
	


		
	


