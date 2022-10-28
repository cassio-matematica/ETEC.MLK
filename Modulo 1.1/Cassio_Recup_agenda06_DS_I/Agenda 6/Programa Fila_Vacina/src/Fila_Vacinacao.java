import javax.swing.JOptionPane;
public class Fila_Vacinacao {

	public static void main(String[] args) {
		String nome;
		int idade;
		String [] dia;

		JOptionPane.showMessageDialog(null, "Bem vindo, agradecemos por acessar "
				+ " o calendário de vacinação. ");
		
	nome = JOptionPane.showInputDialog("Qual o seu nome, por favor?");
	idade = Integer.parseInt(JOptionPane.showInputDialog("Qual a sua idade por favor?"));
	
	
		dia = new String[5];
		
		dia [0] = "Segunda-Feira";
		dia [1] = "Terça-Feira";
		dia [2] = "Quarta-Feira";
		dia [3] = "Quinta-Feira";
		dia [4] = "Sexta-Feria";
		
			if ( idade >= 60 & idade <= 64) {
			JOptionPane.showMessageDialog (null, nome + " você deve se vacinar na " + dia [4]);}
			
			
			else if ( idade >= 65 & idade <= 69) {
				JOptionPane.showMessageDialog (null, nome + " você deve se vacinar na " + dia [3]);}
			
			else if ( idade >= 70 & idade <= 74) {
				JOptionPane.showMessageDialog (null, nome + " você deve se vacinar na " + dia [2]);}
			
			else if ( idade >= 75 & idade <= 79) {
				JOptionPane.showMessageDialog (null, nome + " você deve se vacinar na " + dia [1]);}
				
			else if ( idade >=80 ) {
			JOptionPane.showMessageDialog (null, nome + " você deve se vacinar na " + dia [0]); }
			
			 else {JOptionPane.showInternalMessageDialog(null, nome + " você ainda não faz parte da lista "
						+ "de prioridade de vacinação.");}
}
}
