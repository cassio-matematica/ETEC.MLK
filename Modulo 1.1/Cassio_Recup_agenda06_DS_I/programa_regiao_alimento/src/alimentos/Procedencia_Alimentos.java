package alimentos;
import javax.swing.JOptionPane;
public class Procedencia_Alimentos {

	public static void main(String[] args) {
		
		String codigo;
		

		
		codigo =JOptionPane.showInputDialog( null, " Informe o código do Alimento ");
		
		switch (codigo) {
		case "1":
		JOptionPane.showMessageDialog(null, " Região Sul ");
		break;
		
		case "2":
			JOptionPane.showMessageDialog(null, " Região Norte ");
			break;
			
		case "3":
			JOptionPane.showMessageDialog(null, " Região Leste ");
			break;
		
		case "4":
			JOptionPane.showMessageDialog(null, "Região Oeste ");
			break;
		
		case "5":
			JOptionPane.showMessageDialog(null, " Região Nordeste ");
			break;
		
		case "6":
			JOptionPane.showMessageDialog(null, " Região Sudeste ");
			break;
		
		case "7":
			JOptionPane.showMessageDialog(null, " Região Centro-Oeste ");
			break;
			
		case "8":
			JOptionPane.showMessageDialog(null, " Região Noroeste ");
			break;
			
		default: 
			
			JOptionPane.showMessageDialog(null, " Digite um número de 1 a 8, por favor. ");
						
		}
}
}