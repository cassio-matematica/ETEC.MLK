import java.util.Scanner;
public class Fila_Idoso {

	public static void main(String[] args) {
	Scanner input = new Scanner(System.in);
	
	int idade;
		
		System.out.println("Digite a sua idade:");
		idade = input.nextInt();
		

		if ( idade>= 60 & idade < 80 ){
			System.out.println ("Dirija-se à fila prioritária.");}
		
		if ( idade >= 80){
			System.out.println("Dirija-se à fila 80+");
		}
		
		if ( idade < 60) { System.out.println("Dirija-se à fila comum.");}
		
		}

	}


