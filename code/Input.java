import java.awt.BorderLayout;
import java.awt.Dimension;
import java.awt.FlowLayout;
import java.awt.event.ActionEvent;
import java.awt.event.ActionListener;

import javax.swing.BoxLayout;
import javax.swing.JButton;
import javax.swing.JFrame;
import javax.swing.JLabel;
import javax.swing.JPanel;
import javax.swing.JTextArea;
import javax.swing.JTextField;


public class Input {
JFrame jFrame;
JPanel jPanel;
JPanel p1;
JPanel p2;
JLabel fromL;
JLabel toL;
JTextField fromT;
JTextField toT;
JButton confirm;
JPanel jPanel2;
JLabel answers;
public void go() {
	jFrame = new JFrame("Shortest path of subway");
	jPanel = new JPanel();
	jPanel.setLayout(new BoxLayout(jPanel, BoxLayout.Y_AXIS));
	p1 = new JPanel();
	p2 = new JPanel();
	
	p1.setLayout(new FlowLayout(FlowLayout.CENTER));
	p2.setLayout(new FlowLayout(FlowLayout.CENTER));
	fromL = new JLabel("From:");
	toL = new JLabel("To:");
	fromT = new JTextField();
	toT = new JTextField();
	fromT.setPreferredSize(new Dimension(250, 50));
	toT.setPreferredSize(new Dimension(250, 50));
	confirm = new JButton("Confirm");
	confirm.addActionListener(new ActionListener() {
		
		@Override
		public void actionPerformed(ActionEvent e) {
			// TODO Auto-generated method stub
			Demo demo = new Demo();
			demo.query(fromT.getText(), toT.getText());
			jPanel.setVisible(false);
            jPanel2= new JPanel();
            answers = new JLabel(Demo.ans);
            jPanel2.setLayout(new FlowLayout(FlowLayout.CENTER));
            jPanel2.add(answers);
            jFrame.getContentPane().add(jPanel2);
		}
	});
	p1.add(fromL);
	p1.add(fromT);
	p2.add(toL);
	p2.add(toT);
	jPanel.add(p1);
	jPanel.add(p2);
	jPanel.add(confirm);
	jFrame.getContentPane().add(jPanel);
	jFrame.setSize(500, 300);
	jFrame.setLocationRelativeTo(null);
	jFrame.setVisible(true);
	
}
public static void main(String[] args) {
	Input user = new Input();
	user.go();
}
}
