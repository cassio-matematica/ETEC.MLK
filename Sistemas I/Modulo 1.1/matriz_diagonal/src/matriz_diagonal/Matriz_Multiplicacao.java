//Aluno: Cássio de Albuquerque
//Dispclipa: Desenvolvimento de Sistemas
//Cutso: Técnico em Desenvolvimento de Sistemas

package matriz_diagonal;

import javax.swing.JOptionPane;


public class Matriz_Multiplicacao {

	public static void main(String[] args) {
	int numero [][] = new int[3][3];
	int linha;
	int coluna;
	
	
	JOptionPane.showMessageDialog (null, "Inserindo os dados na Matriz");
	 

			for (linha = 0; linha <=2; linha++) {
			 for (coluna = 0; coluna <=2; coluna++) 
			 { numero[linha][coluna] = Integer.parseInt(
					 JOptionPane.showInputDialog("Entre com o número" + "\nlinha" 
			 + linha + "\ncoluna" + coluna));
		
			 }
			}
			
				
	JOptionPane.showMessageDialog(null,"Multiplicando a diagonal principal da Matriz");
	JOptionPane.showMessageDialog(null, "Ao multiplicarmos a diagonal princilpa por 2, teremos como resultado"
		+ "a seguinte matriz: \n" 
		+ " " + 2*numero[0][0]+ "" + "" +numero[0][1]+ "" + "" +numero[0][2]+ "\n "
		+ "" +numero[1][0]+""+""+""+2*numero[1][1]+""+numero[1][2]+ " \n"
		+" " +numero[2][0]+ "" +numero[2][1]+ ""  
		+ "" +2*numero[2][2]+ "" );
	
}


	 }

	




	
	
	
