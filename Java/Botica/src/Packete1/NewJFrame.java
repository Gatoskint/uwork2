package Packete1;
import java.text.DecimalFormat;
import javax.swing.JOptionPane;
/**
 *
 * @author Jonathan A
 */
public class NewJFrame extends javax.swing.JFrame {
    
    /**
     * Creates new form NewJFrame
     */
    public NewJFrame() {
        initComponents();
    }

    /**
     * This method is called from within the constructor to initialize the form.
     * WARNING: Do NOT modify this code. The content of this method is always
     * regenerated by the Form Editor.
     */
    @SuppressWarnings("unchecked")
    // <editor-fold defaultstate="collapsed" desc="Generated Code">//GEN-BEGIN:initComponents
    private void initComponents() {

        jLabel1 = new javax.swing.JLabel();
        jTextField1 = new javax.swing.JTextField();
        jTextField2 = new javax.swing.JTextField();
        jTextField4 = new javax.swing.JTextField();
        jComboBox1 = new javax.swing.JComboBox<>();
        jComboBox2 = new javax.swing.JComboBox<>();
        jButton1 = new javax.swing.JButton();
        jButton2 = new javax.swing.JButton();
        jButton3 = new javax.swing.JButton();
        jScrollPane1 = new javax.swing.JScrollPane();
        jTextArea1 = new javax.swing.JTextArea();

        setDefaultCloseOperation(javax.swing.WindowConstants.EXIT_ON_CLOSE);
        getContentPane().setLayout(new org.netbeans.lib.awtextra.AbsoluteLayout());

        jLabel1.setFont(new java.awt.Font("Segoe UI Light", 0, 36)); // NOI18N
        jLabel1.setText("Botica");
        getContentPane().add(jLabel1, new org.netbeans.lib.awtextra.AbsoluteConstraints(220, 20, 174, 59));

        jTextField1.setBorder(javax.swing.BorderFactory.createTitledBorder("Nombre"));
        getContentPane().add(jTextField1, new org.netbeans.lib.awtextra.AbsoluteConstraints(40, 100, 261, -1));

        jTextField2.setBorder(javax.swing.BorderFactory.createTitledBorder("DNI"));
        getContentPane().add(jTextField2, new org.netbeans.lib.awtextra.AbsoluteConstraints(40, 160, 261, -1));

        jTextField4.setBorder(javax.swing.BorderFactory.createTitledBorder("Años de antiguedad"));
        getContentPane().add(jTextField4, new org.netbeans.lib.awtextra.AbsoluteConstraints(40, 310, 261, -1));

        jComboBox1.setModel(new javax.swing.DefaultComboBoxModel<>(new String[] { "--CARGO--", "Farmaceutico", "Auxiliar" }));
        getContentPane().add(jComboBox1, new org.netbeans.lib.awtextra.AbsoluteConstraints(40, 210, 261, -1));

        jComboBox2.setModel(new javax.swing.DefaultComboBoxModel<>(new String[] { "--AREA--", "Ventas", "Almacén" }));
        getContentPane().add(jComboBox2, new org.netbeans.lib.awtextra.AbsoluteConstraints(40, 270, 261, -1));

        jButton1.setText("Calcular");
        jButton1.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                jButton1ActionPerformed(evt);
            }
        });
        getContentPane().add(jButton1, new org.netbeans.lib.awtextra.AbsoluteConstraints(380, 120, -1, -1));

        jButton2.setText("Limpiar");
        getContentPane().add(jButton2, new org.netbeans.lib.awtextra.AbsoluteConstraints(380, 190, -1, -1));

        jButton3.setText("Salir");
        jButton3.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                jButton3ActionPerformed(evt);
            }
        });
        getContentPane().add(jButton3, new org.netbeans.lib.awtextra.AbsoluteConstraints(380, 270, -1, -1));

        jTextArea1.setColumns(20);
        jTextArea1.setRows(5);
        jScrollPane1.setViewportView(jTextArea1);

        getContentPane().add(jScrollPane1, new org.netbeans.lib.awtextra.AbsoluteConstraints(40, 390, 440, 220));

        pack();
    }// </editor-fold>//GEN-END:initComponents

    private void jButton1ActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_jButton1ActionPerformed
    String nombres = jTextField1.getText();
    String DNI = jTextField2.getText();
    String cargo = (String) jComboBox1.getSelectedItem();
    String area = (String) jComboBox2.getSelectedItem();
    int añosAntiguedad = Integer.parseInt(jTextField4.getText());
    if (cargo.equals("--CARGO--") || area.equals("--AREA--")) {
        JOptionPane.showMessageDialog(this, "Por favor selecciona un cargo y un área válidos.");
        return;
    }

    // SUELDODODLOSDLOSDLOD
    EmpleadoBotica empleado = new EmpleadoBotica(nombres, DNI, cargo, area, añosAntiguedad);
    double sueldoNeto = empleado.calcularSueldoNeto();

    double sueldoBruto = empleado.calcularSueldoBruto();
    double descuentos = empleado.calcularDescuentos();
    double movilidad = empleado.calcularMovilidad();
    double gratificacion = empleado.calcularGratificacion();
    
    DecimalFormat df = new DecimalFormat("#.##");
    sueldoBruto = Double.parseDouble(df.format(sueldoBruto));
    descuentos = Double.parseDouble(df.format(descuentos));
    movilidad = Double.parseDouble(df.format(movilidad));
    gratificacion = Double.parseDouble(df.format(gratificacion));
    sueldoNeto = Double.parseDouble(df.format(sueldoNeto));
    
    StringBuilder sb = new StringBuilder();
    sb.append("Nombre: ").append(nombres).append("\n");
    sb.append("DNI: ").append(DNI).append("\n");
    sb.append("Cargo: ").append(cargo).append("\n");
    sb.append("Área: ").append(area).append("\n");
    sb.append("Años de Antigüedad: ").append(añosAntiguedad).append("\n\n");
    sb.append("Sueldo Bruto: ").append(sueldoBruto).append("\n");
    sb.append("Descuentos: ").append(descuentos).append("\n");
    sb.append("Movilidad: ").append(movilidad).append("\n");
    sb.append("Gratificación: ").append(gratificacion).append("\n");
    sb.append("Sueldo Neto: ").append(sueldoNeto).append("\n");
  
    jTextArea1.append(sb.toString());
    }//GEN-LAST:event_jButton1ActionPerformed

    private void jButton3ActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_jButton3ActionPerformed
        int rpta = JOptionPane.showOptionDialog(this, "Estas seguro de salir?", "Mensaje de confirmacion", JOptionPane.YES_NO_OPTION, JOptionPane.QUESTION_MESSAGE, null, null, null);
        if(rpta==0)System.exit(0);
    }//GEN-LAST:event_jButton3ActionPerformed

    /**
     * @param args the command line arguments
     */
    public static void main(String args[]) {
        /* Set the Nimbus look and feel */
        //<editor-fold defaultstate="collapsed" desc=" Look and feel setting code (optional) ">
        /* If Nimbus (introduced in Java SE 6) is not available, stay with the default look and feel.
         * For details see http://download.oracle.com/javase/tutorial/uiswing/lookandfeel/plaf.html 
         */
        try {
            for (javax.swing.UIManager.LookAndFeelInfo info : javax.swing.UIManager.getInstalledLookAndFeels()) {
                if ("Nimbus".equals(info.getName())) {
                    javax.swing.UIManager.setLookAndFeel(info.getClassName());
                    break;
                }
            }
        } catch (ClassNotFoundException ex) {
            java.util.logging.Logger.getLogger(NewJFrame.class.getName()).log(java.util.logging.Level.SEVERE, null, ex);
        } catch (InstantiationException ex) {
            java.util.logging.Logger.getLogger(NewJFrame.class.getName()).log(java.util.logging.Level.SEVERE, null, ex);
        } catch (IllegalAccessException ex) {
            java.util.logging.Logger.getLogger(NewJFrame.class.getName()).log(java.util.logging.Level.SEVERE, null, ex);
        } catch (javax.swing.UnsupportedLookAndFeelException ex) {
            java.util.logging.Logger.getLogger(NewJFrame.class.getName()).log(java.util.logging.Level.SEVERE, null, ex);
        }
        //</editor-fold>

        /* Create and display the form */
        java.awt.EventQueue.invokeLater(new Runnable() {
            public void run() {
                new NewJFrame().setVisible(true);
            }
        });
    }

    // Variables declaration - do not modify//GEN-BEGIN:variables
    private javax.swing.JButton jButton1;
    private javax.swing.JButton jButton2;
    private javax.swing.JButton jButton3;
    private javax.swing.JComboBox<String> jComboBox1;
    private javax.swing.JComboBox<String> jComboBox2;
    private javax.swing.JLabel jLabel1;
    private javax.swing.JScrollPane jScrollPane1;
    private javax.swing.JTextArea jTextArea1;
    private javax.swing.JTextField jTextField1;
    private javax.swing.JTextField jTextField2;
    private javax.swing.JTextField jTextField4;
    // End of variables declaration//GEN-END:variables
}