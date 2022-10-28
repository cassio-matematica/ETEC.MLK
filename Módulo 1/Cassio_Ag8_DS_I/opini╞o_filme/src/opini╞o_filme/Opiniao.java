// ETEC   :  Marthing Luther King
// Curso   : Desenvolvimento de Sistemas
// Aluno   : Cássio de Albuquerque
// Agenda: 8

// Programa para efetuar pesquisa de opinião sobre um filme


package opinião_filme;

import javax.swing.JOptionPane;// importa a classe JOptionPane


public class Opiniao {

	public static void main(String[] args) {
		
		int publico=0; // variável que guarda a quantidade de público
		char opiniao; // variável que guarda o opnião do público sobre o filme
		int A=0, B=0, C=0, D=0, E=0; // notas dadas pelo público para o filme
		int idadeD=0; // variável que armazena a média da idade das pessoas que responderam 'ruim'
		
		while ( publico <=40) {  // loop contador que coleta a opinião e idade do usuário
			
			opiniao = JOptionPane.showInputDialog( null," Dê uma nota para filme sendo: " +
			"\n  A- Ótimo B- Bom C- Regular D- Ruim E- Péssimo.\n").charAt(0);
			
			switch (opiniao) { // verificador condicional que guardará a quantidade de cada nota dada
			
			case 'a':
				A= A+1 ; // armazena a quanidadade de respostas do tipo " A ".
		
				break;
				
			case 'b':
				
				B=B+1; // armazena a quanidadade de respostas do tipo " b ".
			
				break;
				
			case 'c':
				
				C=C+1; // armazena a quanidadade de respostas do tipo " c ".
		
				break;
				
			case 'd':
				
			   D=D+1; // armazena a quanidadade de respostas do tipo " d ".
			   
				try {if ( D > 0) { idadeD = Integer.parseInt(JOptionPane.showInputDialog(null, " Digite a sua idade: "));
				idadeD += idadeD; 
				
				}
				
				} catch( Exception erro) { JOptionPane.showMessageDialog(null, " ERRO. " + "\n" + 
				"Digite somente números para o item idade. " +"\n");
					
				}
				
				break;
			
			case 'e':
				
			E=E+1;
			E= E+1 ; // armazena a quanidadade de respostas do tipo " e ".
		
			break;
			
			default:
				JOptionPane.showMessageDialog(null, " Erro. Digite uma nota de 'A' a 'E' com letras minúsculas. ");
				// mensagem padrão em caso do usuário inserir um dado incorreto
				
				break;
			}
			
			publico ++; // incremento para cada resposta até atingir o valor necessário
			
	}

		JOptionPane.showMessageDialog(null, " Resultado da pesquisa: \n"
				+ " Respostas Ótimo: " + A);
				
				if ( D>0) {JOptionPane.showMessageDialog( null," A média da idade das pessoas "
						+ "que responderam ruim foi de " + idadeD/D + " anos  "); 
				// adicionei esse bloco condicional a fim de evitar erro de divisão por zero, caso não seja nada nenhuma 
				// resposta D
				
				}
		JOptionPane.showMessageDialog(null," O percentual de respostas péssimo foi de : " +( E *100 /publico) + "%");

				
				}
	}











		
			

	

		
		
		
		
				
		
