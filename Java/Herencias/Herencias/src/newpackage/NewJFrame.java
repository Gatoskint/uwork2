package newpackage;

import java.util.ArrayList;
import javax.swing.JOptionPane;
import javax.swing.table.DefaultTableModel;


public final class NewJFrame extends javax.swing.JFrame {
    DefaultTableModel modelo;
    Trabajador trabajador;
    Mantenimiento trabajadores;
    public NewJFrame() {
        initComponents();
        String[] columna={"Codigo", "Nombre", "Genero", "Especialidad"};
        modelo = new DefaultTableModel(columna, 0);
        tabla.setModel(modelo);
        trabajadores= new Mantenimiento();
        ActualizarTabla();
    }

    @SuppressWarnings("unchecked")
    // <editor-fold defaultstate="collapsed" desc="Generated Code">//GEN-BEGIN:initComponents
    private void initComponents() {

        regisDocLabel = new javax.swing.JLabel();
        nombreTextField1 = new javax.swing.JTextField();
        edadTextField2 = new javax.swing.JTextField();
        codigoDocTextField3 = new javax.swing.JTextField();
        dniTextField4 = new javax.swing.JTextField();
        generoComboBox1 = new javax.swing.JComboBox<>();
        especComboBox2 = new javax.swing.JComboBox<>();
        regisButton1 = new javax.swing.JButton();
        cleanButton2 = new javax.swing.JButton();
        salirButton3 = new javax.swing.JButton();
        jScrollPane1 = new javax.swing.JScrollPane();
        tabla = new javax.swing.JTable();
        jButton1 = new javax.swing.JButton();

        setDefaultCloseOperation(javax.swing.WindowConstants.EXIT_ON_CLOSE);
        getContentPane().setLayout(new org.netbeans.lib.awtextra.AbsoluteLayout());

        regisDocLabel.setFont(new java.awt.Font("Segoe UI", 1, 18)); // NOI18N
        regisDocLabel.setText("Registro de trabajadores");
        getContentPane().add(regisDocLabel, new org.netbeans.lib.awtextra.AbsoluteConstraints(140, 20, -1, -1));

        nombreTextField1.setBorder(javax.swing.BorderFactory.createTitledBorder("Nombre"));
        getContentPane().add(nombreTextField1, new org.netbeans.lib.awtextra.AbsoluteConstraints(20, 70, 270, -1));

        edadTextField2.setBorder(javax.swing.BorderFactory.createTitledBorder("Edad"));
        getContentPane().add(edadTextField2, new org.netbeans.lib.awtextra.AbsoluteConstraints(20, 130, 270, -1));

        codigoDocTextField3.setBorder(javax.swing.BorderFactory.createTitledBorder("Código Trabajador"));
        getContentPane().add(codigoDocTextField3, new org.netbeans.lib.awtextra.AbsoluteConstraints(20, 190, 270, -1));

        dniTextField4.setBorder(javax.swing.BorderFactory.createTitledBorder("dni trabajador"));
        getContentPane().add(dniTextField4, new org.netbeans.lib.awtextra.AbsoluteConstraints(20, 250, 270, -1));

        generoComboBox1.setModel(new javax.swing.DefaultComboBoxModel<>(new String[] { "---GENERO---", "Masculino", "Femenino" }));
        generoComboBox1.setBorder(javax.swing.BorderFactory.createTitledBorder(""));
        getContentPane().add(generoComboBox1, new org.netbeans.lib.awtextra.AbsoluteConstraints(20, 310, 270, 40));

        especComboBox2.setModel(new javax.swing.DefaultComboBoxModel<>(new String[] { "---ESPECIALIDAD---", "Minero", "Cortador de manera", "Escavador" }));
        getContentPane().add(especComboBox2, new org.netbeans.lib.awtextra.AbsoluteConstraints(20, 360, 270, 40));

        regisButton1.setText("Registro");
        regisButton1.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                regisButton1ActionPerformed(evt);
            }
        });
        getContentPane().add(regisButton1, new org.netbeans.lib.awtextra.AbsoluteConstraints(330, 140, 120, 40));

        cleanButton2.setText("Limpiar");
        cleanButton2.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                cleanButton2ActionPerformed(evt);
            }
        });
        getContentPane().add(cleanButton2, new org.netbeans.lib.awtextra.AbsoluteConstraints(330, 220, 120, 40));

        salirButton3.setFont(new java.awt.Font("Segoe UI", 1, 24)); // NOI18N
        salirButton3.setText("x");
        salirButton3.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                salirButton3ActionPerformed(evt);
            }
        });
        getContentPane().add(salirButton3, new org.netbeans.lib.awtextra.AbsoluteConstraints(400, 10, 60, 70));

        tabla.setModel(new javax.swing.table.DefaultTableModel(
            new Object [][] {
                {null, null, null, null},
                {null, null, null, null},
                {null, null, null, null},
                {null, null, null, null}
            },
            new String [] {
                "Title 1", "Title 2", "Title 3", "Title 4"
            }
        ));
        jScrollPane1.setViewportView(tabla);

        getContentPane().add(jScrollPane1, new org.netbeans.lib.awtextra.AbsoluteConstraints(20, 410, 440, 150));

        jButton1.setText("Eliminar");
        jButton1.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                jButton1ActionPerformed(evt);
            }
        });
        getContentPane().add(jButton1, new org.netbeans.lib.awtextra.AbsoluteConstraints(330, 290, 120, 40));

        pack();
        setLocationRelativeTo(null);
    }// </editor-fold>//GEN-END:initComponents
    
    public void ActualizarTabla(){
        modelo.setRowCount(0);
        ArrayList<Trabajador> listDoc=trabajadores.obtenerTrabajador();
        for (Trabajador trabajador1 : listDoc){
            Object[] filaDato={trabajador1.getCodigoTrabajador(), trabajador1.getNombre(), trabajador1.getApellido(), trabajador1.getEspecialidad()};
            modelo.addRow(filaDato);
            }
    }
    
    private String validaDatos(){
        if(nombreTextField1.getText().equals("")){
            return "Falta ingresar nombre";
        }else if(edadTextField2.getText().equals("")){
            return "Falta ingresar edad";
        }else if(codigoDocTextField3.getText().equals("")){
            return "falta ingresar codigo";
        }else if(Integer.parseInt(edadTextField2.getText())<0 || Integer.parseInt(edadTextField2.getText())>60){
            return "edad fuera de rango";
        }
        return "";
        }
    
    private void cleanButton2ActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_cleanButton2ActionPerformed
        codigoDocTextField3.setText("");
        especComboBox2.setSelectedIndex(0);
        nombreTextField1.setText("");
        generoComboBox1.setSelectedIndex(0);
        dniTextField4.setText("");
        edadTextField2.setText("");
    }//GEN-LAST:event_cleanButton2ActionPerformed

    private void salirButton3ActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_salirButton3ActionPerformed
        int rpta = JOptionPane.showOptionDialog(this, "Estas seguro de salir?", "Mensaje de confirmacion", JOptionPane.YES_NO_OPTION, JOptionPane.QUESTION_MESSAGE, null, null, null);
        if(rpta==0)System.exit(0);
    }//GEN-LAST:event_salirButton3ActionPerformed

    private void regisButton1ActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_regisButton1ActionPerformed
        if(validaDatos().equals("")){
            trabajador= new Trabajador(codigoDocTextField3.getText(), especComboBox2.getSelectedItem().toString(), nombreTextField1.getText(), generoComboBox1.getSelectedItem().toString());
        trabajadores.agregarTrabajador(trabajador);
        ActualizarTabla();
        }else{
            JOptionPane.showMessageDialog(this,validaDatos());
        }
    }//GEN-LAST:event_regisButton1ActionPerformed

    private void jButton1ActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_jButton1ActionPerformed
        int filaSeleccion= tabla.getSelectedRow();
        if(filaSeleccion!=-1){
            trabajadores.eliminarTrabajador(filaSeleccion);
            ActualizarTabla();
        }
        else{
            JOptionPane.showMessageDialog(this, "No ha seleccionado una fila");
        }
    }//GEN-LAST:event_jButton1ActionPerformed


    public static void main(String args[]) {
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

        java.awt.EventQueue.invokeLater(new Runnable() {
            public void run() {
                new NewJFrame().setVisible(true);
            }
        });
    }

    // Variables declaration - do not modify//GEN-BEGIN:variables
    private javax.swing.JButton cleanButton2;
    private javax.swing.JTextField codigoDocTextField3;
    private javax.swing.JTextField dniTextField4;
    private javax.swing.JTextField edadTextField2;
    private javax.swing.JComboBox<String> especComboBox2;
    private javax.swing.JComboBox<String> generoComboBox1;
    private javax.swing.JButton jButton1;
    private javax.swing.JScrollPane jScrollPane1;
    private javax.swing.JTextField nombreTextField1;
    private javax.swing.JButton regisButton1;
    private javax.swing.JLabel regisDocLabel;
    private javax.swing.JButton salirButton3;
    private javax.swing.JTable tabla;
    // End of variables declaration//GEN-END:variables
}
