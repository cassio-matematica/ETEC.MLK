import java.util.Scanner;

public class virus {

	public static void main(String[] args) {
		String nome_regiao;
		float numero_casos_regiao;
		float numero_casos_brasil;
	
		
		
		Scanner input = new Scanner(System.in);
		
		System.out.println("Digite o nome de sua região:");
		nome_regiao = input.nextLine();
		System.out.println("Digite o número de casos de sua região:");
		numero_casos_regiao = input.nextFloat();
		System.out.println("Digite o número casos do país:");
		numero_casos_brasil = input.nextFloat();
		
		float percentual = numero_casos_regiao / numero_casos_brasil;

		
		System.out.println
		(" Região:" + nome_regiao );
		System.out.println
		("Numero de casos no Brasil: " + numero_casos_brasil );
		System.out.println
		(" O número de casos de sua região é: " + numero_casos_regiao );
		System.out.println
		(" O percentual de casos de sua região em relação "
				+ "ao total do país é: " + percentual + "%");
		
		
		
		
				

	}

}
